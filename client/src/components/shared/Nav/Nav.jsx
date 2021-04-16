import React from 'react'
import { NavLink, Link } from "react-router-dom"
import './Nav.css'

export default function Nav (props) {
  // console.log(`Nav.jsx, Line 6: ${props.screenname}`)
  return (
    <nav>
      <div className="spacing"></div>
      <div className="admin-login">
        {
          (props.user === 'admin') ? null : <NavLink to="/admin" className="admin-link">Activate Admin Functions</NavLink>
        }

        
      </div>
      <div className='navbar'>
        <div className="navbar-links">
          {(props.screenname === 'sessions') ? (<span to="/sessions" className="inactive">Sessions</span>) : (<Link to="/sessions" className="active nav-link">Sessions</Link>)}
          {(props.screenname === 'instructors') ? (<span to="/instructors" className="inactive">Instructors</span>) : (<Link to="/instructors" className="active nav-link">Instructors</Link>)}
          {(props.screenname === 'locations') ? (<span to="/locations" className="inactive">Locations</span>) : (<Link to="/locations" className="active nav-link">Locations</Link>)}
          {(props.screenname === 'schedule') ? (<span to="/schedule" className="inactive">Schedule</span>) : (<Link to="/schedule" className="active nav-link">Schedule</Link>)
          }
        </div>
      </div>
    </nav>
  )
}            