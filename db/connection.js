const path = require('path')
require('dotenv').config({
  path: path.resolve('.env')
})
const mysql = require('mysql2')
const DBLOGIN = {
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  port: process.env.DB_PORT,
  password: process.env.DB_PW,
  database: process.env.DB
}

const conn = mysql.createConnection(DBLOGIN)

module.exports = {
  conn
}