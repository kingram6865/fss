import { React, useEffect, useState } from 'react'
import { getAppointmentSchedule } from '../../services/schedule'

export default function Schedule (props) {
  const [appointments, setAppointments] = useState(null)

  useEffect(() => {
    const populate = async () => {
      const results = await getAppointmentSchedule()
      setAppointments(results)
      console.log(results)
    }

    populate()
    const results = appointments.map((x, index) => {
      return <><tr>{x.lesson_info}<td></td></tr></>
    })
  
    // const appointment = appointments.map(x => {
    //   return <><td>{x.lesson_info}</td><td>{x.start_time}</td><td>{x.end_time}</td><td>{x.instructor}</td><td>{x.client}</td></>
    // })
  }, [appointments])

  

  return (
    <>
      <table>
        <tbody>
          {}
        </tbody>
      </table>

    </>
  )
}