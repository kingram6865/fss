import React from 'react'
import Nav from '../Nav/Nav'
import Footer from '../Footer/Footer'
import './Layout.css'

export default function Layout (props) {
  // console.log(props)
  return (
    <div className="layout">
      <Nav screenname={props.screenname} user={props.user}/>
      <div className="layout-children">
        {props.children}
      </div>
      <Footer />
    </div>
  )
}