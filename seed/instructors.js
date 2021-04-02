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