import { React, useState } from 'react'
import Layout from '../../components/shared/Layout/Layout'
import { createSession } from '../../services/sessions'
import './NewSession.css'

export default function NewSession (props) {
  const [sessiondata, setSessiondata] = useState({
    session_name: '',
    start_date: '',
    end_date: '',
    session_type: ''
  })

  function handleChange (event) {
    const { name, value } = event.target
    setSessiondata({
      ...sessiondata, [name]: value
    })
  }

  async function handleSubmit (event) {
    event.preventDefault()
    createSession(sessiondata)
    // alert(JSON.stringify(sessiondata, null, 2))
  }

  return (
    <Layout>
    <div className="component-title">Add A New Session</div>
    <div className="newsession-container">
      <form className="newsession" onSubmit={handleSubmit}>
        <label htmlFor="session_name" className="htmlFor">Session Name</label>
        <input 
          name="session_name" 
          type="text"
          onChange={handleChange}
        /><br/>
        <label htmlFor="start_date" className="htmlFor">Session Start Date</label>
        <input 
          name="start_date" 
          type="date"
          onChange={handleChange}
        /> <br/>
        <label htmlFor="end_date" className="htmlFor">Session End Date</label>
        <input 
          name="end_date" 
          type="date"
          onChange={handleChange}
        /> <br/>
        <label htmlFor="days" className="htmlFor">Session Length (days)</label>
        <input 
          name="session_type" 
          type="number"
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