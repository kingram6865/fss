const { db } = require('../db/connection')

async function executeSQL (sql) {
  const results = await db.any(sql)
  return results  
}

async function sessionCount () {

}

async function timeIncrementCount () {
  
}

async function instructorCount () {

}

async function clientCount () {

}


async function random () {
  const record = {
    lesson_detail_id: 0,
    time_increment_id: 0,
    instructor_id: 0,
    client_id: 0    
  }




}



async function generateAppointment () {
  const SQL = `INSERT INTO appointment_schedule (
    lesson_detail_id,
    time_increment_id,
    instructor_id,
    client_id
  ) VALUES (

  )`

  try {
    const results = await conn.promise().query(SQL)
    console.log(`New appointment.objid: ${results[0].insertId}`)
  } catch (error) {
    console.log(error)
  }
}

// for (let i = 0; i < 10; i++) {
//   generateInstructor()
// }
// conn.end()