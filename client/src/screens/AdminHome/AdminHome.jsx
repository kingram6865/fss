import { React } from 'react'
import Layout from '../../components/shared/Layout/Layout'

export default function AdminHome (props) {

  return (
    <Layout screenname="admin" user={props.userpermissions}>
      <div className="admin-home">
        <h4>Administrative Functions Activated</h4>
        Current admin access: {props.userpermissions}
      </div>
    </Layout>
  )
}
