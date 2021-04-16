import React from 'react'
import './NewAppointment'

export default function NewAppointment () {

  function submitForm () {
    alert("Submit Form triggered")
  }

  return (
    <div className="newappointment-form">
      <form action={submitForm}>
        <input type="text"/>
        <input type="text"/>
        <input type="text"/>
        <input type="text"/>
        <input type="submit" />
      </form>
    </div>
  )
}


/**
 * These tables need to populate the drop downs to create appointment
 * session_details 
 * time_increments 
 * instructors 
 * clients
 * 
 * So the API needs to have routes to these tables' data
 * 
 * 
 * 
 */