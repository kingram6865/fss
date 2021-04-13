import React from 'react'
import { NavLink, Link } from "react-router-dom"
import './Nav.css'

export default function Nav (props) {
  return (
    <nav>
      <div className="admin-login">
        <NavLink to="/" className="admin-link">ADMIN LOGIN</NavLink>
      </div>
        <div className='navbar'>
          <div className="navbar-links">
          
            {(props.screenname === 'sessions') ? <span to="/sessions" className="inactive">Sessions</span> : <Link to="/sessions" className="active">Sessions</Link>}
            
            {(props.screenname === 'instructions') ?
              <span to="/instructors" className="inactive">Instructors</span>
              :
              <Link to="/instructors" className="active">Instructors</Link>
            }

            {(props.screenname === 'locations') ?
              <span to="/locations" className="inactive">Locations</span>
              :
              <Link to="/locations" className="active">Locations</Link>
            }

            {(props.screenname === 'schedule') ?
              <span to="/schedule" className="inactive">Schedule</span>
              :
              <Link to="/schedule" className="active">Schedule</Link>
            }
            </div>
        </div>
    </nav>
  )
}            