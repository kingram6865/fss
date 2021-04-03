const pg = require('pg-promise')()
const path = require('path')
require('dotenv').config({
  path: path.resolve('.env')
})

// const cn = `postgres://${process.env.PGDB_USER}:${process.env.PGDB_PW}@${process.env.PG_HOST}:${process.env.PGDB_PORT}/${process.env.DB}`
// const cn = `postgres://${process.env.HPGDB_USER}:${process.env.HPGDB_PW}@${process.env.HPG_HOST}:${process.env.HPGDB_PORT}/${process.env.HPG_DB}`
const cn = `${process.env.DATABASE_URL}`
const ssl = { rejectUnauthorized: false }
const config = {
  connectionString: `${cn}`,
  ssl: ssl
}

const db = pg(config)

module.exports = {
  db
}