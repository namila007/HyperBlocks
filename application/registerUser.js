/*
 * SPDX-License-Identifier: Apache-2.0
 */

'use strict';

const { FileSystemWallet, Gateway, X509WalletMixin } = require('fabric-network');
const path = require('path');
const fs = require('fs');
let userobj = {
    username:String,
    organization:String,
    department:String
}

async function regUser(userobj) {

    let user,MSPValue;
    if (!userobj.username && !userobj.organization){
        user='eva@supplier.namz.com';
        MSPValue='SupplierMSP';
    } else  {
        user = `${userobj.username}@${userobj.organization}.namz.com`;
        MSPValue = userobj.organization.charAt(0).toUpperCase()+userobj.organization.slice(1) +'MSP';
    }
    
    const org =userobj.organization.toLowerCase();
    const caServer=`ca.${org}.namz.com`;
    const admin = `admin@${org}.namz.com`;
    
    const affiliation = org +"."+ userobj.department.toLowerCase();
    const ccpPath = path.resolve(__dirname, '..', `connection-${org}.json`);
    const ccpJSON = fs.readFileSync(ccpPath, 'utf8');
    const ccp = JSON.parse(ccpJSON);
    console.info(` Value loaded: CA SERVER >> ${caServer} \n MSP >> ${MSPValue} \n user >> ${user} `);

    try {

        // Create a new file system based wallet for managing identities.
        const walletPath = path.join(process.cwd(), 'wallet');
        const wallet = new FileSystemWallet(walletPath);
        console.log(`Wallet path: ${walletPath}`);

        // Check to see if we've already enrolled the user.
        const userExists = await wallet.exists(user);
        if (userExists) {
            console.log(`An identity for the user ${user} already exists in the wallet`);
            return;
        }

        // Check to see if we've already enrolled the admin user.
        const adminExists = await wallet.exists(admin);
        if (!adminExists) {
            console.log(`An identity for the admin user ${admin} does not exist in the wallet`);
            console.log('Run the enrollAdmin.js application before retrying');
            return;
        }

        // Create a new gateway for connecting to our peer node.
        const gateway = new Gateway();
        await gateway.connect(ccp, { wallet, identity: admin, discovery: { enabled: true, asLocalhost: true } });
       // console.log(gateway.getClient())
        // Get the CA client object from the gateway for interacting with the CA.
        const ca = gateway.getClient().getCertificateAuthority();
        //console.log(ca)
        const adminIdentity = gateway.getCurrentIdentity();
        
        //new affilation service
        const affiliationService = ca.newAffiliationService();
        const registeredAffiliations = await affiliationService.getAll(adminIdentity);

        // creating new affilation if it is not available
        if(!registeredAffiliations.result.affiliations.some(x => x.name == org && x.affiliations.some(y=> y.name == affiliation))){
            console.info(`Creating new department : ${affiliation}`)
            await affiliationService.create({name: affiliation, force: true}, adminIdentity);
        }

        // Register the user, enroll the user, and import the new identity into the wallet.
        const secret = await ca.register({ affiliation: affiliation, enrollmentID: user, role: 'client' }, adminIdentity);
        const enrollment = await ca.enroll({ enrollmentID: user, enrollmentSecret: secret });
        const userIdentity = X509WalletMixin.createIdentity(MSPValue, enrollment.certificate, enrollment.key.toBytes());
        await wallet.import(user, userIdentity);
        console.log(`Successfully registered and enrolled admin user  ${user} and imported it into the wallet`);

    } catch (error) {
        console.error(`Failed to register user ${user}: ${error}`);
        process.exit(1);
    }
}

module.exports = regUser;