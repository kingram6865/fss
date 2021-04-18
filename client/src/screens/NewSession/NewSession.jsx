import React from 'react'
import Layout from '../../components/shared/Layout/Layout'
import { createSession } from '../../services/sessions'
import './NewSession.css'

export default function NewSession (props) {
  async function handleSubmit (event) {
    event.preventDefault()
    createSession()
  }

  return (
    <Layout>
    <div className="newsession-container">
      <form className="newsession" onSubmit={handleSubmit}>
        <input 
          name="session_name" 
          type="text"/>       
        <input 
          name="start_date" 
          type="date"

        />
        <input 
          name="end_date" 
          type="date"

        />
        <input 
          name="days" 
          type="number"

        />
        <div className="create-submit-container">
          <button className="submit-button">Save</button>
        </div>
      </form>
    </div>
    </Layout>
  )
}