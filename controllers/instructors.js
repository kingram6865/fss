const { db } = require('../db/connection')

async function getInstructors (req, res) {
  try {
    const SQL = `SELECT * FROM instructors`
    const rows = await db.any(SQL)
    res.json(rows)
  } catch (error) {
    res.status(500).json(error.message)
  }
}

async function getInstructor (req, res) {
  try {
    const SQL = `SELECT * FROM instructors WHERE objid = ${req.params.id}`
    const rows = await db.any(SQL)
    res.json(rows)
  } catch (error) {
    res.status(500).json(error.message)
  }
}

async function createInstructor (req, res) {
  try {
    const SQL = ""
    const rows = await db.any(SQL)
    res.json(rows)
  } catch (error) {
    res.status(500).json(error.message)
  }
}

async function editInstructor (req, res) {
  const params = Object.keys(req.params.body).map(x =>{
    return `${x}=${req.params.body[x]}`
  })

  res.json(params)
  // try {
  //   const SQL = "UPDATE instructors "
  //   const rows = await db.any(SQL)
  //   res.json(rows)
  // } catch (error) {
  //   res.status(500).json(error.message)
  // }
}

async function deleteInstructor (req, res) {
  try {
    const SQL = `DELETE FROM instructors WHERE objid = ${req.params.id}`
    const rows = await db.any(SQL)
    res.json(rows)
  } catch (error) {
    res.status(500).json(error.message)
  }
}

module.exports = {
  getInstructors,
  getInstructor,
  createInstructor,
  editInstructor,
  deleteInstructor
}
