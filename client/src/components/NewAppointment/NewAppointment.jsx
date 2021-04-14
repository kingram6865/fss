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
