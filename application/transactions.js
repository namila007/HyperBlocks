'use strict';

const { FileSystemWallet, Gateway } = require('fabric-network');
const fs = require('fs');
const path = require('path');
const config = require('./config.json');
const channelid = config.channelid;
const contractid = config.contractid;

let org,caServer,admin,ccp,ccpPath,user,contract,gateway;
let userobj = {
    username:String,
    organization:String,
    department:String
}
const walletPath = path.resolve(process.cwd(), 'wallet');
const wallet = new FileSystemWallet(walletPath);


async function createBatch(userobj,batch) {
    await loadDefaultValues(userobj);
    try {
        
        // Submit the 'createBatch' transaction to the smart contract, and wait for it
            // to be committed to the ledger.
        await contract.submitTransaction('createBatch',
            batch.RFIDtag, 
            batch.drugName, 
            batch.amount, 
            batch.organization,
            batch.dateManufactured, 
            batch.dateExpired, 
            batch.minTemp, 
            batch.maxTemp);
        console.info(`Block Created `)
        
    }
    catch (error) {
        console.error(`Failed to submit transaction: ${error}`);
        process.exit(1);
    }
    finally {

    // Disconnect from the gateway
    console.log('Disconnect from Fabric gateway.');
    gateway.disconnect();
    }
}

async function queryBatch(userobj,RFIDtag) {
    
    await loadDefaultValues(userobj);
    try {
        const result = await contract.evaluateTransaction('getHistoryForBatch',RFIDtag);
        console.info(`Block Found ${RFIDtag}`)
        await gateway.disconnect();
        return result.toString();
    }
    catch (error) {
        console.error(`Failed to fetch Block RFID ${RFIDtag} : ${error}`);
        process.exit(1);
    }
}

async function transferBatch(userobj,RFIDtag, neworganization) {
    
    await loadDefaultValues(userobj);
    try {
        console.info(RFIDtag, neworganization);
        const result =await contract.submitTransaction('transferBatch',RFIDtag,neworganization);
        console.info(`Block Transfered ${RFIDtag} to new organization ${neworganization}`);
        // const result = await contract.evaluateTransaction('getHistoryForBatch',RFIDtag);
        await gateway.disconnect();
        return result.toString();
    }
    catch (error) {
        console.error(`Failed to transfer Block RFID ${RFIDtag} : ${error}`);
        process.exit(1);
    }
}




async function loadDefaultValues(userobj){
    org =userobj.organization.toLowerCase();
    caServer=`ca.${org}.namz.com`;
    admin = `admin@${org}.namz.com`;
    ccpPath = path.resolve(__dirname, '..', `connection-${org}.json`);
    const ccpJSON = fs.readFileSync(ccpPath, 'utf8');
    ccp = JSON.parse(ccpJSON);
    user = `${userobj.username}@${org}.namz.com`;
    
    console.info(` Value loaded: CA SERVER >> ${caServer} \n  \n user >> ${user} `);

    // Create a new gateway, and connect to the gateway peer node(s). The identity
    // specified must already exist in the specified wallet.
    gateway = new Gateway();
    await gateway.connect(ccpPath, { wallet, identity: user, discovery: { enabled: true, asLocalhost: true } });
    // Get the network channel that the smart contract is deployed to.
    const network = await gateway.getNetwork(channelid);

    // Get the smart contract from the network channel.
    contract = network.getContract(contractid);

}

module.exports.createBatch = createBatch;
module.exports.queryBatch = queryBatch;
module.exports.transferBatch =transferBatch;