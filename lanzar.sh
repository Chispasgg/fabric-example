#!/bin/bash
cd test-network
./network.sh up createChannel -ca -c mychannel -s couchdb
./network.sh deployCC -ccn chaincodebasic -ccp ../asset-transfer-basic/chaincode-go -ccv 1 -ccl go -verbose
# -cci funcion de inicio
