const ad = require("./enrollAdmin")
const reg = require("./registerUser")
const cr = require("./transactions")


let batch = {
    RFIDtag: "7433425236",
    drugName: "Kohoba Saban6",
    amount: "100",
    organization: "ACME",
    dateManufactured: "2019-10-23",
    dateExpired: "2020-10-23",
    minTemp: "20",
    maxTemp: "25",
 };

// ad("manufacturer").then(()=>reg("manufacturer","namila6","department2")).then(()=>
// cr.createBatch("manufacturer","namila5",batch)

// );
async function queryBatch(RFIDtag,username,organization) { let data = await cr.queryBatch(RFIDtag,username,organization)
return data
}
queryBatch("7433425236","namila6","manufacturer").then((x)=>console.log(x));