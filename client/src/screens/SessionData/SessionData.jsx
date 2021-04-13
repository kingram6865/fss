/**
 * Screen Context: Season sessions list
 */

import React from 'react'
import Sessions from '../../components/Sessions/Sessions'
import './SessionData.css'
import Layout from '../../components/shared/Layout/Layout'

export default function SessionData (props) {
  return (
    <Layout screenname="sessions">
      <div className="sessions-container">
        <Sessions />
      </div>
    </Layout>
  )
}
