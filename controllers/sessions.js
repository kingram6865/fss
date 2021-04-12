const { db } = require('../db/connection')

async function getSessions (req, res) {
  try {
    const SQL = `SELECT * FROM session_schedule`
    const rows = await db.any(SQL)
    res.json(rows)
  } catch (error) {
    res.status(500).json(error.message)
  }
}
async function getSession (req, res) {
  try {
    const SQL = `SELECT * FROM session_schedule WHERE objid = ${req.params.id}`
    const rows = await db.any(SQL)
    res.json(rows)
  } catch (error) {
    res.status(500).json(error.message)
  }
}
async function createSession (req, res) {
  try {
    const SQL = ``
    const rows = await db.any(SQL)
    res.json(rows)
  } catch (error) {
    res.status(500).json(error.message)
  }
}
async function editSession (req, res) {
  try {
    const SQL = ``
    const rows = await db.any(SQL)
    res.json(rows)
  } catch (error) {
    res.status(500).json(error.message)
  }
}
async function deleteSession (req, res) {
  try {
    const SQL = ``
    const rows = await db.any(SQL)
    res.json(rows)
  } catch (error) {
    res.status(500).json(error.message)
  }
}

module.exports = {
  getSessions,
  getSession,
  createSession,
  editSession,
  deleteSession  
}