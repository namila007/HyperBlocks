const express = require("express")
const bodyParser = require("body-parser")
const morgan = require('morgan')
const cors = require("cors")
const helmet = require('helmet')
const httpStatus = require('http-status-codes')
const enrollAdmin = require('./enrollAdmin')
const registerUser = require("./registerUser")
const transactions = require("./transactions")

const app = express()
const organizations = {
    supplier: "supplier",
    distributor: "distributor",
    manufacturer: "manufacturer"
}


app.use(bodyParser.urlencoded({ extended: true }))
app.use(bodyParser.json())
app.use(cors())
app.use(morgan('combined'))
app.use(helmet())

async function enrollAdmins() {
    console.log("ENROLLING ADMINS FOR 3 ORGZ")
    await enrollAdmin(organizations.supplier)
    await enrollAdmin(organizations.distributor)
    await enrollAdmin(organizations.manufacturer)
    console.log("ENROLMENT COMPLETED")
}

app.get("/api/status", async (req, res) => {
    res.status(httpStatus.OK).send({status:"OK"})

})

/**
 *  @param user = {
 *      name:"",
 *      organization: "",
 *      company: ""
 *  }
 */

app.post("/api/user", async (req, res) => {
    const user = req.body.user
    const val = await registerUser(user.organization, user.name, user.company)
    if(val) {
        res.status(httpStatus.CREATED).send("user created")
    }
})

/**
 *  {
     * user = {
    *      name:"",
    *      organization: "",
    *      company: ""
    * },
    * batch = {
    * RFIDtag: "7433425231",
    * drugName: "Kohoba Saban2",
    * amount: "100",
    * organization: "ACME",
    * dateManufactured: "2019-10-23",
    * dateExpired: "2020-10-23",
    * minTemp: "20",
    * maxTemp: "25",
    * block:'0'
    }
}
 */
app.post("/api/batch", async (req, res) => {
    const object = req.body
    const value = await transactions.createBatch(object.user.organization,object.user.name, object.batch) 
    if (value) {
        res.status(httpStatus.CREATED).send(JSON.parse(value))
    } else res.status(httpStatus.INTERNAL_SERVER_ERROR).send(`Error occured ${value}`)
})

/**
 * {
 *  RFIDtag: "",
 *  user = {
    *      name:"",
    *      organization: "",
    *      company: ""
    * },
 * }
 */
app.get("/api/batch", async (req, res) => {
    const object = req.body
    const value = await transactions.queryBatch(object.RFIDtag,object.user.name,object.user.organization) 
    if (value) {
        res.status(httpStatus.OK).send(JSON.parse(value))
    } else res.status(httpStatus.INTERNAL_SERVER_ERROR).send(`Error occured ${value}`)
})

/**
 *  {
 *  RFIDtag: "",
 *  user = {
    *      name:"",
    *      organization: "",
    *      company: ""
    * },
 * }
 */
app.get("/api/batch/history", async (req, res) => {
    const object = req.body
    const value = await transactions.queryBatchHistory(object.RFIDtag,object.user.name,object.user.organization) 
    if (value) {
        res.status(httpStatus.OK).send(JSON.parse(value))
    } else res.status(httpStatus.INTERNAL_SERVER_ERROR).send(`Error occured ${value}`)
})

app.put("/api/batch/transfer", async (req, res) => {
    const object = req.body.data
    const value = await transactions.transportBatch(object.RFIDtag,object.company,object.user.name,object.organization) 
    if (value) {
        res.status(httpStatus.OK).send(JSON.parse(value))
    } else res.status(httpStatus.INTERNAL_SERVER_ERROR).send(`Error occured ${value}`)
})

enrollAdmins()

app.listen(3030,() => {
console.log(`NCK App run in PORT:3030`)
})