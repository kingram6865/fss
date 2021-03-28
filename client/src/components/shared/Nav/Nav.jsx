import React from 'react'
import './Nav.css'

export default function Nav () {
  return (
    <nav>
      <div className='navbar'>
        <div className="navbar-links">
          <span className="dead-links">Sessions</span>
          <span className="dead-links">Instructors</span>
          <span className="dead-links">Locations</span>
        </div>
      </div>
    </nav>
  )
}