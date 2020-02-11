#!/bin/bash

function one_line_pem {
    echo "`awk 'NF {sub(/\\n/, ""); printf "%s\\\\\\\n",$0;}' $1`"
}

function json_ccp {
    local PP=$(one_line_pem $6)
    local CP=$(one_line_pem $7)
    sed -e "s/\${ORG}/$1/" \
        -e "s/\${ORGMSP}/$2/" \
        -e "s/\${P0PORT}/$3/" \
        -e "s/\${P1PORT}/$4/" \
        -e "s/\${CAPORT}/$5/" \
        -e "s#\${PEERPEM}#$PP#" \
        -e "s#\${CAPEM}#$CP#" \
        ccp-template.json 
}

# function yaml_ccp {
#     local PP=$(one_line_pem $5)
#     local CP=$(one_line_pem $6)
#     sed -e "s/\${ORG}/$1/" \
#         -e "s/\${P0PORT}/$2/" \
#         -e "s/\${P1PORT}/$3/" \
#         -e "s/\${CAPORT}/$4/" \
#         -e "s#\${PEERPEM}#$PP#" \
#         -e "s#\${CAPEM}#$CP#" \
#         ccp-template.yaml | sed -e $'s/\\\\n/\\\n        /g'
# }

ORG=supplier
ORGMSP=SupplierMSP
P0PORT=7051
P1PORT=7151
CAPORT=7054
PEERPEM=crypto-config/peerOrganizations/supplier.namz.com/tlsca/tlsca.supplier.namz.com-cert.pem
CAPEM=crypto-config/peerOrganizations/supplier.namz.com/ca/ca.supplier.namz.com-cert.pem

echo "$(json_ccp $ORG $ORGMSP $P0PORT $P1PORT $CAPORT $PEERPEM $CAPEM)" > connection-supplier.json
# echo "$(yaml_ccp $ORG $P0PORT $P1PORT $CAPORT $PEERPEM $CAPEM)" > connection-supplier.yaml

ORG=manufacturer
ORGMSP=ManufacturerMSP
P0PORT=8051
P1PORT=8151
CAPORT=8054
PEERPEM=crypto-config/peerOrganizations/manufacturer.namz.com/tlsca/tlsca.manufacturer.namz.com-cert.pem
CAPEM=crypto-config/peerOrganizations/manufacturer.namz.com/ca/ca.manufacturer.namz.com-cert.pem

echo "$(json_ccp $ORG $ORGMSP $P0PORT $P1PORT $CAPORT $PEERPEM $CAPEM)" > connection-manufacturer.json
# echo "$(yaml_ccp $ORG $P0PORT $P1PORT $CAPORT $PEERPEM $CAPEM)" > connection-manufacturer.yaml

ORG=distributor
ORGMSP=DistributorMSP
P0PORT=9051
P1PORT=9151
CAPORT=9054
PEERPEM=crypto-config/peerOrganizations/distributor.namz.com/tlsca/tlsca.distributor.namz.com-cert.pem
CAPEM=crypto-config/peerOrganizations/distributor.namz.com/ca/ca.distributor.namz.com-cert.pem

echo "$(json_ccp $ORG $ORGMSP $P0PORT $P1PORT $CAPORT $PEERPEM $CAPEM)" > connection-distributor.json
