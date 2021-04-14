import React from 'react'
import './Home.css'
import Layout from '../../components/shared/Layout/Layout'

export default function Home (props) {
  return (
    <Layout screenname="home">
      <div className="home-data-container">
        <h3>Farnsworth Swim School Scheduling Tool</h3>
      </div>
    </Layout>
  )
}
