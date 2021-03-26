const { conn } = require('../db/connection')
const faker = require('faker')

async function generateInstructor () {
  const SQL = `INSERT INTO instructors (
    first_name,
    middle_name,
    last_name
  ) VALUES (
    '${faker.name.firstName()}',
    '${faker.name.middleName()}',
    '${faker.name.lastName()}'
  )`

  try {
    const results = await conn.promise().query(SQL)
    console.log(`New instructors.objid: ${results[0].insertId}`)
  } catch (error) {
    console.log(error)
  }
}

// async function generateAppointment () {
//   const SQL = `INSERT INTO appointment_schedule (
//     lesson_detail_id,
//     time_increment_id,
//     instructor_id,
//     client_id
//   ) VALUES (

//   )`

//   try {
//     const results = await conn.promise().query(SQL)
//     console.log(`New appointment.objid: ${results[0].insertId}`)
//   } catch (error) {
//     console.log(error)
//   }
// }

// for (let i = 0; i < 10; i++) {
//   generateInstructor()
// }
// conn.end()



