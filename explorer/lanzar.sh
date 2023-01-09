#!/bin/bash
sudo rm -r organizations
sudo cp -r ../test-network/organizations ./org_tmp
sudo chown -R chispas:chispas ./org_tmp
mkdir organizations
mv org_tmp/ordererOrganizations org_tmp/peerOrganizations organizations
mv organizations/peerOrganizations/org1.example.com/users/User1@org1.example.com/msp/keystore/*_sk  organizations/peerOrganizations/org1.example.com/users/User1@org1.example.com/msp/keystore/priv_sk
rm -r org_tmp
docker-compose up
rm -r organizations
