// import { React } from 'react'
import { React, useEffect, useState } from 'react'
import { Link } from 'react-router-dom'
import { getSessions } from '../../services/sessions'
import './Sessions.css'

export default function Sessions (props) {
  const [sessions, setSessions] = useState(null)
  function formatTime(input) {
    const timedata = new Intl.DateTimeFormat('en-us', {
      weekday: 'long',
      year: 'numeric',
      month: 'long',
      day: 'numeric',
      hour: 'numeric',
      minute: 'numeric',
      second: 'numeric',
      fractionalSecondDigits: 3,
      hour12: true,
      timeZone: 'UTC'      
    })

    const converted = timedata.formatToParts(Date.parse(input))
    const formatted = `${converted[0]['value']}, ${converted[2]['value']} ${converted[4]['value']}, ${converted[6]['value']}`

    return formatted
  }

  // function editRecord (e) {
  //   const id = e.currentTarget.getAttribute('data-id')
  //   alert(`Edit this record ${id}`)
  // }

  // function deleteRecord (e) {
  //   const id = e.currentTarget.getAttribute('data-id')
  //   alert(`Delete this record ${id}`)
  // }

  useEffect(() => {
    const populate = async () => {
      const results = await getSessions()
      // console.log(results)
      const data = results.map((item, index) => {
        // console.log(formatTime(item.start_date))
        return (
          <tr key={index}>
            <td>{item.session_name}</td>
            <td>{formatTime(item.start_date)}</td>
            <td>{formatTime(item.end_date)}</td>
            <td>{item.session_type}</td>
            {/* <td className="actions" onClick={editRecord} data-id={item.objid}><i className="fas fa-pencil-alt"></i></td>
            <td className="actions" onClick={deleteRecord} data-id={item.objid}><i className="fas fa-times"></i></td> */}
            <td className="actions" data-id={item.objid}><Link to={{pathname: `/sessions/${item.objid}/edit`}}><i className="fas fa-pencil-alt"></i></Link></td>
            <td className="actions" data-id={item.objid}><Link to={{pathname: `/sessions/${item.objid}/delete`}}><i className="fas fa-times"></i></Link></td>
          </tr>
        )
      })

      setSessions(data)
    }

    populate()
  }, [])

  // function generateSession() {
  //   // alert('Open Session Creation Form')
  //   return <Redirect to={`/create-session`} />
  // }

  return (
    <div className="sessions-container">
      <table className="sessions-table">
        <tbody>
          <tr><th>Session</th><th>Start Date</th><th>End Date</th><th>Days</th></tr>
          { sessions }
          <tr><td align="center" colSpan={4} className="new-session"><Link to='/create-session'>Create New Session</Link></td></tr>
        </tbody>
      </table>
    </div>
  )
}
