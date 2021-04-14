import React from 'react'
import './InstructorData.css'
import Layout from '../../components/shared/Layout/Layout'
import Instructors from '../../components/Instructors/Instructors'

export default function InstructorData (props) {
  return (
    <Layout screenname="instructors">
      <div className="instructors-data-container">
        <Instructors />
      </div>
    </Layout>
  )
}
