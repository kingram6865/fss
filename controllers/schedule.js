const { db } = require('../db/connection')

// async function executeSQL (sql, params = null) {
//   console.log(sql, params)
//   if (params) {
//     const results = await db.any(sql, params, (err) => {
//       console.log(params)
//       if (err) throw err
//     })
//   }
//   const results = await db.any(sql)
//   return results  
// }

async function getAppointments (req, res) {
  try {
    const SQL = `SELECT * FROM appointment_schedule ORDER BY`
    const rows = await db.any(SQL)
    res.json(rows)
  } catch (error) {
    res.status(500).json(error.message)
  }
}

async function getAppointment (req, res) {
  try {
    const SQL = `SELECT * FROM appointment_schedule WHERE objid = ${req.params.id}`
    const rows = await db.any(SQL)
    res.json(rows)
  } catch (error) {
    res.status(500).json(error.message)
  }
}

async function addAppointment (req, res) {
  const values = [
    req.params.lessonid,
    req.params.timeid,
    req.params.teacherid,
    req.params.clientid,
    req.params.confirmed
  ]

  try {
    const SQL = `INSERT INTO appointment_schedule (
        lesson_detail_id, 
        time_increment_id, 
        teacher_id, 
        client_id, 
        confirmed
      ) VALUES ($1, $2, $3, $4, $5)`
    const appointment = await db.any(SQL. values)
    res.status(201).json(appointment)
  } catch (error) {
    res.status(500).json(error.message)
  }
}

async function editAppointment (req, res) {
  const values = [
    req.params.lessonid,
    req.params.timeid,
    req.params.teacherid,
    req.params.clientid,
    req.params.confirmed
  ]

  try {
    const SQL = `UPDATE appointment_schedule 
    SET lesson_detail_id = $1,
    time_increment_id = $2,
    instructor_id = $3,
    client_id = $4,
    confirmed = $5,
    last_edit = NOW()
    WHERE objid = ${req.params.id}`
    const appointment = await db.any(SQL, values)
    res.status(201).json(appointment)
  } catch (error) {
    res.status(500).json(error.message)
  }
}

async function deleteAppointment (req, res) {
  try {
    const SQL = `DELETE FROM appointment_schedule WHERE objid = ${req.params.id}`
    const appointment = await db.any(SQL)
  } catch (error) {
    res.status(500).json(error.message)
  }
}

async function test () {
  try {
    const SQL = `SELECT * FROM appointment_schedule`
    const rows = await db.any(SQL)
    rows.forEach(x => {
      console.log(`Line 107: ${x.created} ${x.objid} ${x.start_time} ${x.end_time} ${x.instructor} ${x.client} ${x.confirmed} ${x.last_edit}`)
    })
  } catch (error) {
    console.log(error.message)
  } finally {
    // conn.end()
    db.$pool.end()
  }
}

test()

// async function editTest (arr) {
//   const req = {
//     params: {id: 23}
//   }
//   const values = [...arr]

//   try {
//     const SQL = `UPDATE appointment_schedule 
//     SET lesson_detail_id = $1,
//     time_increment_id = $2,
//     instructor_id = $3,
//     client_id = $4,
//     confirmed = $5,
//     last_edit = NOW()
//     WHERE objid = ${req.params.id}`
//     const appointment = await db.any(SQL, values)
//     console.log(appointment)
//   } catch (error) {
//     // errMsg(error.message)
//     console.log(error.message)
//   }
// }

// editTest([2, 13, 9, 20, 1])

module.exports = {
  getAppointments,
  getAppointment,
  addAppointment,
  editAppointment,
  deleteAppointment
}
