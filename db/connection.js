const path = require('path')
require('dotenv').config({
  path: path.resolve('.env')
})
// const mysql = require('mysql2')
const pg = require('pg-promise')()
// const cn = `postgres://${process.env.PGDB_USER}:${process.env.PGDB_PW}@${process.env.PG_HOST}:${process.env.PGDB_PORT}/${process.env.DB}`
// const cn = `postgres://${process.env.HPGDB_USER}:${process.env.HPGDB_PW}@${process.env.HPG_HOST}:${process.env.HPGDB_PORT}/${process.env.HPG_DB}?sslmode=require`
const cn = process.env.DATABASE_URL
const db = pg(cn)

const DBLOGIN = {
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  port: process.env.DB_PORT,
  password: process.env.DB_PW,
  database: process.env.DB
}

// const conn = mysql.createConnection(DBLOGIN)

module.exports = {
  db
}