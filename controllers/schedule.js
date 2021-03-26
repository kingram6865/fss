const { conn } = require('../db/connection')

async function executeSQL (sql) {
  const results = await conn.promise().query(sql)
  return results  
}

async function errMsg (msg = null) {
  res.status(500).json({ error: msg })
}

// async function test () {
//   try {
//     const SQL = `SELECT * FROM appointment_schedule`
//     const [rows, fields] = await executeSQL(SQL)
//     console.log(rows)
//   } catch (error) {
//     console.log(error.message)
//   } finally {
//     conn.end()
//   }
// }

async function getAppointments (req, res) {
  try {
    const SQL = `SELECT * FROM appointment_schedule`
    const [rows, fields] = await executeSQL(SQL)
    res.json(rows)
  } catch (error) {
    errMsg(error.message)
  }
}

async function getAppointment (req, res) {
  try {
    const SQL = `SELECT * FROM appointment_schedule WHERE objid = ${req.params.id}`
    const [rows, fields] = await executeSQL(SQL)
    res.json(rows)
  } catch (error) {
    errMsg(error.message)
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
    errMsg(error.message)
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
    errMsg(error.message)
  }
}

async function deleteAppointment (req, res) {
  try {
    const SQL = `DELETE FROM appointment_schedule WHERE objid = ${req.params.id}`
    const appointment = await executeSQL(SQL)
  } catch (error) {
    errMsg(error.message)
  }
}

// test()

module.exports = {
  getAppointments,
  getAppointment,
  addAppointment,
  editAppointment,
  deleteAppointment
}
