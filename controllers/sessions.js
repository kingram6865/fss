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
  console.log(`sessions.js [getSession(${JSON.stringify(req.params, null, 2)})]`)
  try {
    const SQL = `SELECT objid, session_name, TO_CHAR(start_date, 'YYYY-MM-DD') start_date, TO_CHAR(end_date, 'YYYY-MM-DD') end_date, session_type FROM session_schedule WHERE objid = ${req.params.id}`
    console.log(SQL)
    const rows = await db.any(SQL)
    res.json(rows)
  } catch (error) {
    res.status(500).json(error.message)
  }
}

async function createSession (req, res) {
  try {
    const SQL = `INSERT INTO session_schedule (session_name, start_date, end_date, session_type) VALUES ('${req.body.session_name}', TO_DATE('${req.body.start_date}','YYYY-MM-DD'), TO_DATE('${req.body.end_date}', 'YYYY-MM-DD'), ${req.body.session_type}) RETURNING *`
    console.log(SQL)
    const rows = await db.any(SQL)
    res.json(rows)
  } catch (error) {
    res.status(500).json(error.message)
  }
}

async function editSession (req, res) {
  // const settings = Object.keys(req.body).map(x => {
  //   if (x === 'start_date' || x === 'end_date'){
  //     return ` ${x} = TO_DATE('${req.body[x]}','YYYY-MM-DD')`
  //   } else if (x !== 'objid') {
  //     return ` ${x} = '${req.body[x]}'`
  //   }
  // })

  const settings = [
    `session_name = '${req.body.session_name}'`,
    ` start_date = TO_DATE('${req.body.start_date}', 'YYY-MM-DD')`,
    ` end_date = TO_DATE('${req.body.end_date}', 'YYY-MM-DD')`,
    ` session_type = ${req.body.session_type}`
  ]

  console.log(settings)

  try {
    const SQL = `UPDATE session_schedule SET ${settings} WHERE objid = ${req.body.objid}`
    console.log(SQL)
    // const rows = await db.any(SQL)
    // res.json(rows)
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