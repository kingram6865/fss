import {React, useEffect, useState} from 'react'
import { getinstructors } from '../../services/instructors'
import './Instructors.css'

export default function Instructors (props) {
  const [instructorlist, setInstructorlist] = useState(null)

  useEffect(() => {
    const populate = async () => {
      const results = await getinstructors()
      // console.log(results)
      const data = results.map(item => {
      return (
        <tr key={item.objid}>
          <td>{item.first_name}</td>
          <td>{item.last_name}</td>
        </tr>)
      })

      setInstructorlist(data)
    }

    populate()
  }, [])

  return (
    <div className="instructor-details">
      <table className="instructors-data">
        <tbody>
          <tr><th>First Name</th><th>Last Name</th></tr>
          {instructorlist}
        </tbody>
      </table>
    </div>
  )
}
