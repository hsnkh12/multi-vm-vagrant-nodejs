const mysql = require('mysql')
const connection = mysql.createConnection({
  host: '192.168.56.7',
  user: 'root',
  password: 'root',
  database: 'node_app_db'
})

module.exports = {
    connection: connection
}