import React from 'react'
import './Appointment.css'
import Layout from '../../components/shared/Layout/Layout'
import Schedule from '../../components/Schedule/Schedule'

export default function Appointment (props) {
  return (
    <Layout >
      <div className="schedule-manager">
        <h1>Appointment Schedule List</h1>
        <h5>(Currently Booked Sessions)</h5>
      </div>
      <div className="schedule-manager-container">
        <Schedule />
      </div>
    </Layout>
  )
}