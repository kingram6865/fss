import { React, useEffect, useState } from 'react'
import { getAppointmentSchedule } from '../../services/schedule'
import './Schedule.css'

export default function Schedule (props) {
  const [appointments, setAppointments] = useState(null)

  useEffect(() => {
    const populate = async () => {
      const results = await getAppointmentSchedule()
      // console.log(results)
      const data = results.map((item, index) => {
        return (
          <tr key={index}>
            <td>{`${item.lesson_type} Day Session`}</td>
            <td>{item.start_time}</td>
            <td>{item.end_time}</td>
            <td>{item.instructor}</td>
            <td>{item.client}</td>
            <td>{(item.confirmation) ? 'Confirmed' : 'Not Confirmed'}</td>
          </tr>
        )
      })

      setAppointments(data)
    }

    populate()

  }, [])

  return (
    <>
      <table className="schedule">
        <tbody>
          <tr><th>Session Type</th><th>Start Time</th><th>End Time</th><th>Instructor</th><th>Student</th><th>Confirmation</th></tr>
          {appointments}
        </tbody>
      </table>
    </>
  )
}
