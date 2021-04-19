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
    const SQL = `SELECT objid, session_name, TO_CHAR(start_date, 'YYYY-MM-DD') start_date, TO_CHAR(end_date, 'YYYY-MM-DD') end_date, session_type FROM session_schedule WHERE objid = ${req.params.id}`
    const rows = await db.any(SQL)
    res.json(rows)
  } catch (error) {
    res.status(500).json(error.message)
  }
}
async function createSession (req, res) {
  console.log(`[POST] controllers/sessions.js ========`)
  // console.log(JSON.stringify(req.body, null, 2))
  // console.log(req)
  response = {
    request_data: (req.body) ? req.body : "The request data did not arrive",
    note: "There should be data"
  }
  console.log(`================================`)
  // try {
  //   const SQL = `INSERT INTO session_schedule (session_name, start_date, end_date, session_type) VALUES ('${req.params.session_name}', TO_DATE('${req.params.start_date}','YYYY-MM-DD'), TO_DATE('${req.params.end_date}', 'YYYY-MM-DD'), ${req.params.days})`
  //   console.log(SQL)
  //   const rows = await db.any(SQL)
  //   res.json(rows)
  // } catch (error) {
  //   res.status(500).json(error.message)
  // }

  res.json(response)
}

async function editSession (req, res) {
  console.log(`[PUT] controllers/sessions.js ========`)
  // console.log(JSON.stringify(req.body, null, 2))
  // console.log(req)
  response = {
    request_data: (req.body) ? req.body : "The UPDATE request data did not arrive",
    note: "There should be data"
  }
  console.log(`================================`)
  
  // try {
  //   const SQL = `UPDATE session_schedule SET`
  //   console.log(SQL)
  //   // const rows = await db.any(SQL)
  //   // res.json(rows)
  // } catch (error) {
  //   res.status(500).json(error.message)
  // }
  res.json(response)
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