import React from 'react'
import './LocationData.css'
import Layout from '../../components/shared/Layout/Layout'
import Locations from '../../components/Locations/Locations'

export default function LocationData (props) {
  return (
    <Layout screenname="locations">
      <div className="location-data-container">
        <Locations />
      </div>
    </Layout>
  )
}
