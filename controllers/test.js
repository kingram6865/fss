const { db } = require('../db/connection')

async function executeSQL (sql) {
  const results = await db.any(sql)
  return results  
}
async function getAppointments () {
  try {
    // const SQL = `SELECT * FROM appointment_schedule`
    // const SQL = `SELECT * FROM session_details`
    const SQL = `SELECT * FROM locations`
    const rows = await executeSQL(SQL)
    return rows
  } catch (error) {
    console.log(error.message)
  }
}

async function run () {
  const output = await getAppointments()
  console.log(`test.js -> Line 20: ${output.length} records returned`)
  output.forEach(x => {
    console.log(JSON.stringify(x, null, 2))
  })
}

run()