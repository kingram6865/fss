const { db } = require('../db/connection')

async function getInstructorsSchedule (req, res) {
  try {
    const SQL = `SELECT * FROM teachers2sessions`
    const rows = await db.any(SQL)
    res.json(rows)
  } catch (error) {
    res.status(500).json(error.message)
  }
}

async function getInstructorSchedule (req, res) {
  try {
    const SQL = `SELECT * FROM teachers2sessions WHERE objid = ${req.params.id}`
    const rows = await db.any(SQL)
    res.json(rows)
  } catch (error) {
    res.status(500).json(error.message)
  }
}

async function createInstructorSchedule (req, res) {
  try {
    const SQL = ``
    const rows = await db.any(SQL)
    res.json(rows)
  } catch (error) {
    res.status(500).json(error.message)
  }
}

async function editInstructorSchedule (req, res) {
  try {
    const SQL = ``
    const rows = await db.any(SQL)
    res.json(rows)
  } catch (error) {
    res.status(500).json(error.message)
  }
}

async function deleteInstructorSchedule (req, res) {
  try {
    const SQL = ``
    const rows = await db.any(SQL)
    res.json(rows)
  } catch (error) {
    res.status(500).json(error.message)
  }
}


module.exports = {
  getInstructorsSchedule,
  getInstructorSchedule,
  createInstructorSchedule,
  editInstructorSchedule,
  deleteInstructorSchedule  
}