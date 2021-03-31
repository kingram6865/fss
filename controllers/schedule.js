const { db } = require('../db/connection')

async function executeSQL (sql) {
  const results = await db.any(sql)
  return results  
}

async function getAppointments (req, res) {
  try {
    const SQL = `SELECT * FROM appointment_schedule ORDER BY `
    const rows = await executeSQL(SQL)
    res.json(rows)
  } catch (error) {
    res.status(500).json(error.message)
  }
}

async function getAppointment (req, res) {
  try {
    const SQL = `SELECT * FROM appointment_schedule WHERE objid = ${req.params.id}`
    const rows = await executeSQL(SQL)
    res.json(rows)
  } catch (error) {
    res.status(500).json(error.message)
  }
}

async function addAppointment (req, res) {
  try {
    const SQL = `INSERT INTO appointment_schedule (
        lesson_detail_id, 
        time_increment_id, 
        teacher_id, 
        client_id, 
        confirmed
      )
      VALUES (
        ${req.params.lesson_id},
        ${req.params.time_increment_id},
        ${req.params.instructor_id},
        ${req.params.client_id},
        ${req.params.confirmed}
      )`
    const appointment = await executeSQL(SQL)
    res.status(201).json(appointment)
  } catch (error) {
    // errMsg(error.message)
    res.status(500).json(error.message)
  }
}

async function editAppointment (req, res) {
  const values = [
    req.params.lessonid,
    req.params.timeid,
    req.params.teacherid,
    req.params.clientid,
    req.params.confirmed,
  ]

  try {
    const SQL = `UPDATE appointment_schedule 
    SET lesson_detail_id = ?,
    SET time_increment_id = ?,
    SET teacher_id = ?,
    SET client_id = ?,
    SET confirmed = ?
    WHERE objid = ${req.params.id}`
    const appointment = await executeSQL(SQL, values)
    res.status(201).json(appointment)
  } catch (error) {
    // errMsg(error.message)
    res.status(500).json(error.message)
  }
}

async function deleteAppointment (req, res) {
  try {
    const SQL = `DELETE FROM appointment_schedule WHERE objid = ${req.params.id}`
    const appointment = await executeSQL(SQL)
  } catch (error) {
    res.status(500).json(error.message)
    // errMsg(error.message)
  }
}

// async function test () {
//   try {
//     const SQL = `SELECT * FROM appointment_schedule`
//     const [rows, fields] = await executeSQL(SQL)
//     console.log(rows)
//   } catch (error) {
//     console.log(error.message)
//   } finally {
//     // conn.end()
//     db.$pool.end()
//   }
// }

// test()

module.exports = {
  getAppointments,
  getAppointment,
  addAppointment,
  editAppointment,
  deleteAppointment
}
