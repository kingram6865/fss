import React from 'react'
import Nav from '../Nav/Nav'
import Footer from '../Footer/Footer'
import './Layout.css'

export default function Layout (props) {
  return (
    <div className="layout">
      <Nav props={props.screenname}/>
      {console.log(props)}
      <div className="layout-children">
        {props.children}
      </div>
      <Footer />
    </div>
  )
}