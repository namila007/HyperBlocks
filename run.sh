function generateCerts() {
    if [ -d "crypto-config" ]; then
        rm -Rf crypto-config
    fi
    echo
    echo "##########################################################"
    echo "##### Generate certificates using cryptogen tool #########"
    echo "##########################################################"

    bin/cryptogen generate --config=./crypto-config.yaml
}

function generateChannelArtifacts() {
    echo "##########################################################"
    echo "#########  Generating Orderer Genesis block ##############"
    echo "##########################################################"
    set -x
    mkdir channel-artifacts
    bin/configtxgen -profile TwoOrgsOrdererGenesis -channelID $SYS_CHANNEL -outputBlock ./channel-artifacts/genesis.block

      res=$?
    set +x
    if [ $res -ne 0 ]; then
        echo "Failed to generate orderer genesis block..."
        exit 1
    fi
    echo
    echo "#################################################################"
    echo "### Generating channel configuration transaction 'channel.tx' ###"
    echo "#################################################################"
    set -x
    bin/configtxgen -profile TwoOrgsChannel -outputCreateChannelTx ./channel-artifacts/channel.tx -channelID $CHANNEL_NAME
    res=$?
    set +x
    if [ $res -ne 0 ]; then
    echo "Failed to generate channel configuration transaction..."
    exit 1
    fi

    echo
  echo "#################################################################"
  echo "#######    Generating anchor peer update for SupplierMSP   ##########"
  echo "#################################################################"
  set -x
  bin/configtxgen -profile TwoOrgsChannel -outputAnchorPeersUpdate ./channel-artifacts/SupplierMSPanchors.tx -channelID $CHANNEL_NAME -asOrg SupplierMSP
  res=$?
  set +x
  if [ $res -ne 0 ]; then
    echo "Failed to generate anchor peer update for SupplierMSP..."
    exit 1
  fi

  echo
  echo "#################################################################"
  echo "#######    Generating anchor peer update for ManufacturerMSP   ##########"
  echo "#################################################################"
  set -x
  bin/configtxgen -profile TwoOrgsChannel -outputAnchorPeersUpdate \
    ./channel-artifacts/ManufacturerMSPanchors.tx -channelID $CHANNEL_NAME -asOrg ManufacturerMSP
  res=$?
  set +x
  if [ $res -ne 0 ]; then
    echo "Failed to generate anchor peer update for ManufacturerMSP..."
    exit 1
  fi
  echo

   echo
  echo "#################################################################"
  echo "#######    Generating anchor peer update for DistributorMSP   ##########"
  echo "#################################################################"
  set -x
  bin/configtxgen -profile TwoOrgsChannel -outputAnchorPeersUpdate \
    ./channel-artifacts/DistributorMSPanchors.tx -channelID $CHANNEL_NAME -asOrg DistributorMSP
  res=$?
  set +x
  if [ $res -ne 0 ]; then
    echo "Failed to generate anchor peer update for DistributorMSP..."
    exit 1
  fi
  echo
}
function replacePrivateKey() {
  # sed on MacOSX does not support -i flag with a null extension. We will use
  # 't' for our back-up's extension and delete it at the end of the function
  ARCH=$(uname -s | grep Darwin)
  if [ "$ARCH" == "Darwin" ]; then
    OPTS="-it"
  else
    OPTS="-i"
  fi

  # Copy the template to the file that will be modified to add the private key
  cp docker-compose-e2e-template.yaml docker-compose-e2e.yaml

  # The next steps will replace the template's contents with the
  # actual values of the private key file names for the two CAs.
  CURRENT_DIR=$PWD
  cd crypto-config/peerOrganizations/supplier.namz.com/ca/
  PRIV_KEY=$(ls *_sk)
  cd "$CURRENT_DIR"
  sed $OPTS "s/CA0_PRIVATE_KEY/${PRIV_KEY}/g" docker-compose-e2e.yaml
  cd crypto-config/peerOrganizations/manufacturer.namz.com/ca/
  PRIV_KEY=$(ls *_sk)
  cd "$CURRENT_DIR"
  sed $OPTS "s/CA1_PRIVATE_KEY/${PRIV_KEY}/g" docker-compose-e2e.yaml
  cd crypto-config/peerOrganizations/distributor.namz.com/ca/
  PRIV_KEY=$(ls *_sk)
  cd "$CURRENT_DIR"
  sed $OPTS "s/CA2_PRIVATE_KEY/${PRIV_KEY}/g" docker-compose-e2e.yaml
  
}

function generateNewChaincode() {
  echo " GENERATING NEW CHAIN CODE....."
  cd chaincode/
  set -x
  npm install
  set +x
  if [ $res -ne 0 ]; then
    echo "Failed to generate the chain code..."
    exit 1
  fi
  echo
  cd ..
}

function generateConnectionJson() {
  echo "GENERATING CONNECTION PROFILES FOR EACH ORGANIZATIONS>>>>>"
  if [ "ls connection*json" ]; then
    rm -f connection*.json
  fi 
  set -x
  "./ccp-generate.sh"
  res=$?
  set +x
  if [ $res -ne 0 ]; then
    echo "Failed to generate CCP Connection profiles..."
    exit 1
  fi
  echo
}

function networkUp() {
  #checkPrereqs
  # generate artifacts if they don't exist
  if [ ! -d "crypto-config" ]; then
    generateCerts
    replacePrivateKey
    generateChannelArtifacts

    # if [ "${GENERATE_CHAINCODE}" == "true" ]; then
    #   generateNewChaincode
    # fi  

    generateConnectionJson
  fi
  COMPOSE_FILES="-f ${COMPOSE_FILE} -f ${COMPOSE_FILE_COUCH}"
  if [ "${CERTIFICATE_AUTHORITIES}" == "true" ]; then
    COMPOSE_FILES="${COMPOSE_FILES} -f ${COMPOSE_FILE_CA}"
    export BYFN_CA3_PRIVATE_KEY=$(cd crypto-config/peerOrganizations/distributor.namz.com/ca && ls *_sk)
    export BYFN_CA1_PRIVATE_KEY=$(cd crypto-config/peerOrganizations/supplier.namz.com/ca && ls *_sk)
    export BYFN_CA2_PRIVATE_KEY=$(cd crypto-config/peerOrganizations/manufacturer.namz.com/ca && ls *_sk)
  fi
  if [ "${IF_COUCHDB}" == "couchdb" ]; then
    COMPOSE_FILES="${COMPOSE_FILES} -f ${COMPOSE_FILE_COUCH}"
  fi

  IMAGE_TAG=$IMAGETAG docker-compose ${COMPOSE_FILES} up -d 2>&1
  docker ps -a
  if [ $? -ne 0 ]; then
    echo "ERROR !!!! Unable to start network"
    exit 1
  fi

  # now run the end to end script
  docker exec cli scripts/script.sh $CHANNEL_NAME $CLI_DELAY $LANGUAGE $CLI_TIMEOUT $NO_CHAINCODE
  if [ $? -ne 0 ]; then
    echo "ERROR !!!! Test failed"
    exit 1
  fi
}
# Obtain CONTAINER_IDS and remove them
# TODO Might want to make this optional - could clear other containers
function clearContainers() {
  CONTAINER_IDS=$(docker ps -a | awk '($2 ~ /dev-peer.*.mycc.*/) {print $1}')
  if [ -z "$CONTAINER_IDS" -o "$CONTAINER_IDS" == " " ]; then
    echo "---- No containers available for deletion ----"
  else
    docker rm -f $CONTAINER_IDS
  fi
}

# Delete any images that were generated as a part of this setup
# specifically the following images are often left behind:
# TODO list generated image naming patterns
function removeUnwantedImages() {
  DOCKER_IMAGE_IDS=$(docker images | awk '($1 ~ /dev-peer.*.mycc.*/) {print $3}')
  if [ -z "$DOCKER_IMAGE_IDS" -o "$DOCKER_IMAGE_IDS" == " " ]; then
    echo "---- No images available for deletion ----"
  else
    docker rmi -f $DOCKER_IMAGE_IDS
  fi
}


function networkDown() {
  # stop org3 containers also in addition to org1 and org2, in case we were running sample to add org3
  # stop kafka and zookeeper containers in case we're running with kafka consensus-type
  docker-compose -f $COMPOSE_FILE  down --volumes --remove-orphans

  # Don't remove the generated artifacts -- note, the ledgers are always removed
  if [ "$MODE" != "restart" ]; then
    # Bring down the network, deleting the volumes
    #Delete any ledger backups
    docker run -v $PWD:/tmp/first-network --rm hyperledger/fabric-tools:$IMAGETAG rm -Rf /tmp/first-network/ledgers-backup
    #Cleanup the chaincode containers
    clearContainers
    #Cleanup images
    removeUnwantedImages
    # remove orderer block and other channel configuration transactions and certs
    rm -rf channel-artifacts/*.block channel-artifacts/*.tx crypto-config
    # remove the docker-compose yaml file that was customized to the example
    rm -f docker-compose-e2e.yaml

    rm -rf application/wallet
    rm -f connection*.json
  fi
}

export SYS_CHANNEL="namz-sys-channel"
export CHANNEL_NAME="mychannel"
CLI_TIMEOUT=10
LANGUAGE=node
CLI_DELAY=3
COMPOSE_FILE=docker-compose-cli.yaml
COMPOSE_FILE_CA=docker-compose-ca.yaml
COMPOSE_FILE_COUCH=docker-compose-couch.yaml
CERTIFICATE_AUTHORITIES="true"
GENERATE_CHAINCODE="false"
export COMPOSE_PROJECT_NAME="hyperblock"

#COMPOSE_FILE_COUCH=docker-compose-couch.yaml
MODE=$1
IMAGETAG='1.4'
export IMAGE_TAG='1.4'
CONSENSUS_TYPE="solo"
shift
# Determine whether starting, stopping, restarting, generating or upgrading
if [ "$MODE" == "up" ]; then
  EXPMODE="Starting"
elif [ "$MODE" == "down" ]; then
  EXPMODE="Stopping"
elif [ "$MODE" == "restart" ]; then
  EXPMODE="Restarting"
elif [ "$MODE" == "generate" ]; then
  EXPMODE="Generating certs and genesis block"
elif [ "$MODE" == "upgrade" ]; then
  EXPMODE="Upgrading the network"
else
  # printHelp
  exit 1
fi

if [ "${MODE}" == "up" ]; then
  networkUp
elif [ "${MODE}" == "down" ]; then ## Clear the network
  networkDown
elif [ "${MODE}" == "generate" ]; then ## Generate Artifacts
  generateCerts
  replacePrivateKey
  generateChannelArtifacts
  generateChannelArtifacts
  # if [ "${GENERATE_CHAINCODE}" == "true" ]; then
  #     generateNewChaincode
  # fi 
  generateConnectionJson
elif [ "${MODE}" == "restart" ]; then ## Restart the network
  networkDown
  networkUp
elif [ "${MODE}" == "upgrade" ]; then ## Upgrade the network from version 1.2.x to 1.3.x
  upgradeNetwork
else
  printHelp
  exit 1
fi


while getopts "h?c:t:d:f:s:l:i:o:anvg" opt; do
  case "$opt" in
  h | \?)
    printHelp
    exit 0
    ;;
  c)
    CHANNEL_NAME=$OPTARG
    ;;
  t)
    CLI_TIMEOUT=$OPTARG
    ;;
  d)
    CLI_DELAY=$OPTARG
    ;;
  f)
    COMPOSE_FILE=$OPTARG
    ;;
  s)
    IF_COUCHDB=$OPTARG
    ;;
  l)
    LANGUAGE=$OPTARG
    ;;
  i)
    IMAGETAG=$(go env GOARCH)"-"$OPTARG
    ;;
  o)
    CONSENSUS_TYPE=$OPTARG
    ;;
  a)
    CERTIFICATE_AUTHORITIES=true
    ;;
  n)
    NO_CHAINCODE=true
    ;;
  v)
    VERBOSE=true
    ;;
  g)
    GENERATE_CHAINCODE="true"  
    generateNewChaincode
    ;;
  esac
done
