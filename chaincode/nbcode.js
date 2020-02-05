'use strict';

const { Contract} = require('fabric-contract-api');

class nbcode extends Contract {

async getBatch(ctx,batchId) {

    let batchAsBytes = await ctx.stub.getState(batchId); 

    if (!batchAsBytes || batchAsBytes.toString().length <= 0) {

      throw new Error('Batch with this Id does not exist: ');

       }

      let batch=JSON.parse(batchAsBytes.toString());
      return JSON.stringify(batch);

  }

  async addBatch(ctx,batchId,temperature,organization,location) {
    console.info('============= START : adding Batch  ===========');
    let batch={

        id:batchId,

        temp:temperature,

        org:organization,

        loc:location

    };

      await ctx.stub.putState(batchId,Buffer.from(JSON.stringify(batch))); 

    console.log('Batch added To the ledger Succesfully..');
    console.info('============= END : adding Batch  ===========');  
    }

  async deleteBatch(ctx,batchId) {
    
    await ctx.stub.deleteState(batchId); 
    console.log(`Batch ${batchId} deleted from the ledger Succesfully..`);

  }

  async changeOrganization (ctx, batchId, newOrg) {
    console.info('============= Start : changeOrganization ===========');
    let batchAsbytes = await ctx.stub.getState(batchId)
    if(!batchAsbytes || batchAsbytes.length==0) {
      throw new Error(`${batchId} does not exist`);
    }
    const batch = JSON.parse(batchAsbytes.toString());
    batch.org = newOrg;

    await ctx.stub.putState(batchId, Buffer.from(JSON.stringify(batch)));
    console.info('============= END : changeOrganization ===========');
  }

} 


module.exports = nbcode