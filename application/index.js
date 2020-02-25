const ad = require("./enrollAdmin")
const reg = require("./registerUser")
const cr = require("./transactions")


let batch = {
    RFIDtag: "7433425231",
    drugName: "Kohoba Saban6",
    amount: "100",
    organization: "ACME",
    dateManufactured: "2019-10-23",
    dateExpired: "2020-10-23",
    minTemp: "20",
    maxTemp: "25",
 };

 let userobj = {
    username:"namila2",
    organization:"manufacturer",
    department:"department1"
}
async function queryBatch(userobj,RFIDtag) { let data = await cr.queryBatch(userobj,RFIDtag)
    return data
    }
// ad(userobj.organization).then(()=>reg(userobj)).then(()=>
// cr.createBatch(userobj,batch))

queryBatch(userobj,"7433425231").then((x)=>console.log(x))
// .then(cr.transferBatch(userobj,"7433425231","UK")).then((x)=>console.log(x));