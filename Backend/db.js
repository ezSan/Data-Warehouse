  
const { Sequelize } = require("sequelize")

const db = new Sequelize ("data_warehouse", "root", "ezequiel", { 
    host: "127.0.0.1",
    port: 3307,
    dialect: "mysql"
}
)

module.exports = { db }