const path = require('path')
require('dotenv').config({
  path: path.resolve('.env')
})
// const mysql = require('mysql2')
const pg = require('pg-promise')()
const cn = `postgres://${process.env.PGDB_USER}:${process.env.PGDB_PW}@${process.env.PGDB_HOST}:${process.env.PGDB_PORT}/${process.env.PGDB}`
// const cn = `postgres://${process.env.HPGDB_USER}:${process.env.HPGDB_PW}@${process.env.HPG_HOST}:${process.env.HPGDB_PORT}/${process.env.HPG_DB}`
// const cn = `postgres://${process.env.AWSPG_USER}:${process.env.AWSPG_PW}@${process.env.AWSPG_HOST}:${process.env.AWSPG_PORT}/${process.env.AWSPG_DB}`
// const cn = `${process.env.DATABASE_URL}`
// const cn = `${process.env.DBDATA}`
// const cn = `postgres://${process.env.ZEUSPG_USER}:${process.env.ZEUSPG_PW}@${process.env.ZEUSPG_HOST}:${process.env.ZEUSPG_PORT}/${process.env.ZEUSPG_DB}`

const ssl = { rejectUnauthorized: false }
const config = {
  connectionString: `${cn}`
  // ssl: ssl,
  // statement_timeout: 10000
}

const db = pg(config)

console.log(`connection.js -> Line 20: ${cn}`)
module.exports = {
  db
}