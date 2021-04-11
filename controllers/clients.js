const { db } = require('../db/connection')

async function getClients (req, res) {
  try {
    const SQL = "SELECT * FROM clients"
    const rows = await db.any(SQL)
    res.json(rows)
  } catch (error) {
    console.log(`Line 9: ${error}`)
    res.status(500).json(error.message)
  }
}

async function getClient (req, res) {
  try {
    const SQL = `SELECT * FROM clients WHERE objid = ${req.params.id}`
    const rows = await db.any(SQL)
    res.json(rows)
  } catch (error) {
    console.log(error)
    res.status(500).json(error.message)
  }
}

async function createClient (req, res) {
  const SQL = ""
  try {
    const rows = await db.any(SQL)
    res.json(rows)
  } catch (error) {
    console.log(error)
    res.status(500).json(error.message)
  }
}

async function editClient (req, res) {
  const { id } = req.params
  const SQL = ""
  try {
    const rows = await db.any(SQL)
    res.json(rows)
  } catch (error) {
    console.log(error)
    res.status(500).json(error.message)
  }
}

async function deleteClient (req, res) {
  const id = req.params.id
  const SQL = `DELETE FROM clients WHERE objid = ${req.params.id} RETURNING *`
  try {
    const rows = await db.any(SQL)
    res.json(rows)
  } catch (error) {
    console.log(error)
    res.status(500).json(error.message)
  }
}

module.exports = {
  getClients,
  getClient,
  createClient,
  editClient,
  deleteClient  
}