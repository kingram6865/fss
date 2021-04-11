const { db } = require('../db/connection')

async function getIntervals (req, res) {
  try {
    const SQL = `SELECT * from time_increments`
    const rows = await db.any(SQL)
    res.json(rows)
  } catch (error) {
    res.status(500).json(error.message)
  }
}

async function getInterval (req, res) {
  try {
    const SQL = `SELECT * from time_increments WHERE objid = ${req.params.id}`
    const rows = await db.any(SQL)
    res.json(rows)
  } catch (error) {
    res.status(500).json(error.message)
  }
}


module.exports = {
  getIntervals,
  getInterval
}