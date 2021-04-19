import { React, useState, useEffect } from 'react'
import './EditSession.css'
import { getSession, editSession } from '../../services/sessions'
import Layout from '../../components/shared/Layout/Layout'

export default function EditSession (props) {
  const [sessiondata, setSessiondata] = useState({
    objid: '',
    session_name: '',
    start_date: '',
    end_date: '',
    session_type: ''
  })

  useEffect(() => {
    // console.log(props.sess_id)
    const populate = async (id) => {
      const response = await getSession(id)
      // console.log(response[0])
      setSessiondata({...response[0], start_date: response[0].start_date, end_date: response[0].end_date})
    }

    populate(props.sess_id)

  }, [props.sess_id])

  function handleChange (event) {
    const { name, value } = event.target
    setSessiondata({
      ...sessiondata, [name]: value
    })
  }

  async function handleSubmit (event) {
    event.preventDefault()
    // createSession(sessiondata)
    editSession(sessiondata)
    alert(JSON.stringify(sessiondata, null, 2))
  }

  return (
    <Layout>
      <div className="component-title">Edit Session Data</div>
      <div className="edit-session-container">
        <form className="edit-session" onSubmit={handleSubmit}>
        <label htmlFor="session_name" className="htmlFor">Session Name</label>
          <input 
            name="session_name" 
            type="text"
            value = {sessiondata.session_name ? sessiondata.session_name : ""}
            onChange={handleChange}
          /><br/>
          <label htmlFor="start_date" className="htmlFor">Session Start Date</label>
          <input 
            name="start_date" 
            type="date"
            value = {sessiondata.start_date}
            onChange={handleChange}
          /> <br/>
          <label htmlFor="end_date" className="htmlFor">Session End Date</label>
          <input 
            name="end_date" 
            type="date"
            value = {sessiondata.end_date}
            onChange={handleChange}
          /> <br/>
          <label htmlFor="days" className="htmlFor">Session Length (days)</label>
          <input 
            name="days" 
            type="number"
            value = {sessiondata.session_type}
            onChange={handleChange}
          />
          <div className="create-submit-container">
            <button className="submit-button">Save</button>
          </div>
        </form>
      </div>
    </Layout>
  )
}