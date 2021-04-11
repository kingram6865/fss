const { db } = require('../db/connection')

async function getLessonDetails (req, res) {
  try {
    const SQL= `SELECT * FROM lesson_details`
    const rows = await db.any(SQL)
    res.json(rows)
  } catch (error) {
    res.status(500).json(error.message)
  }
}

async function getLessonDetail (req, res) {
  try {
    const SQL= `SELECT * FROM lesson_details WHERE objid = ${req.params.id}`
    const rows = await db.any(SQL)
    res.json(rows)
  } catch (error) {
    res.status(500).json(error.message)
  }
}

async function createLessonDetail (req, res) {
  try {
    const SQL= ``
    const rows = await db.any(SQL)
  } catch (error) {
    res.status(500).json(error.message)
  }
}

async function editLessonDetail (req, res) {
  try {
    const SQL= ``
    const rows = await db.any(SQL)
  } catch (error) {
    res.status(500).json(error.message)
  }
}

async function deleteLessonDetail (req, res) {
  try {
    const SQL= ``
    const rows = await db.any(SQL)
  } catch (error) {
    res.status(500).json(error.message)
  }
}


module.exports = {
  getLessonDetails,
  getLessonDetail,
  createLessonDetail,
  editLessonDetail,
  deleteLessonDetail  
}