const { db } = require('../db/connection')

async function getLocations (req, res) {
  try {
    const SQL = `SELECT * FROM locations`
    const rows = await db.any(SQL)
    res.json(rows)
  } catch (error) {
    res.status(500).json(error.message)
  }
}
async function getLocation (req, res) {
  try {
    const SQL = `SELECT * FROM locations WHERE objid = ${req.params.id}`
    const rows = await db.any(SQL)
    res.json(rows)
  } catch (error) {
    res.status(500).json(error.message)
  }
}
async function createLocation (req, res) {
  try {
    const SQL = ``
    const rows = await db.any(SQL)
    res.json(rows)
  } catch (error) {
    res.status(500).json(error.message)
  }
}
async function editLocation (req, res) {
  try {
    const SQL = ``
    const rows = await db.any(SQL)
    res.json(rows)
  } catch (error) {
    res.status(500).json(error.message)
  }
}
async function deleteLocation (req, res) {
  try {
    const SQL = ``
    const rows = await db.any(SQL)
    res.json(rows)
  } catch (error) {
    res.status(500).json(error.message)
  }
}


module.exports = {
  getLocations,
  getLocation,
  createLocation,
  editLocation,
  deleteLocation
}