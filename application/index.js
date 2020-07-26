const ad = require("./enrollAdmin")
// const reg = require("./registerUser")
// const cr = require("./transactions")


let batch = {
    RFIDtag: "7433425231",
    drugName: "Kohoba Saban2",
    amount: "100",
    organization: "ACME",
    dateManufactured: "2019-10-23",
    dateExpired: "2020-10-23",
    minTemp: "20",
    maxTemp: "25",
    block:'0'
 };
const user = "user2"
const org = {
    supplier: "supplier",
    distributor: "distributor",
    manufacturer: "manufacturer"
}

async function run() {
    console.log("ENROLLING ADMINS FOR 3 ORGZ")
    await ad(org.supplier)
    await ad(org.distributor)
    await ad(org.manufacturer)
    console.log("ENROLMENT COMPLETED")

}
// await reg(org.supplier,user,"ACME");
// await reg(org.manufacturer,user,"Swadeshi");
// await reg(org.distributor,user,"CBL");

// cr.createBatch(org.supplier,user,batch)
//     .then(()=> {
//         return cr.queryBatch(batch.RFIDtag,user,org.supplier)
//     })
//     .then((x) => {console.log(x)})
//     .then(() => {
//         return cr.transportBatch(batch.RFIDtag,"Swadeshi",user,org.manufacturer)
//     })
//     .then((x) => {console.log(x)})
//     .then(() => {
//         return cr.transportBatch(batch.RFIDtag,"CBL",user,org.distributor)
//     })
//     .then((x) => {console.log(x)})
//     .then(() => {
//         return cr.queryBatchHistory(batch.RFIDtag,user,org.supplier)
//     })
//     .then((x) => {console.log(x)})
//     .catch((x) => {console.log(x)})
// }  

run();
