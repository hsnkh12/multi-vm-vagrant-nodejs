const express = require("express")
const {connection} = require("./db.config")



const app = express()

app.get("", (req, res) => {

    connection.connect()

    connection.query('INSERT INTO counter() VALUES();', (err, rows, fields) => {
        if (err) throw err
    })

    connection.end()

    return res.json({"message":"hello"})
})



app.listen(80)