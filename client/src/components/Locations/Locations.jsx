import { React, useEffect, useState} from 'react'
import './Locations.css'
import { getLocations } from '../../services/locations'

export default function Locations (props) {
  const [locationlist, setLocationlist] = useState(null)

  useEffect(() => {
    const populate = async () => {
      const results = await getLocations()
      console.log(results)
      const data = results.map(items => {
        return (
          <tr key={items.objid}>
            <td>{items.site_name}</td>
            <td>{items.site_address}</td>
          </tr>
        )
      })

      setLocationlist(data)
    }

    populate()
  }, [])

  return (
    <div className="location-detail">
      <table className="locations">
        <tbody>
          <tr><th>Location Name</th><th>Location Address</th></tr>
          { locationlist }
        </tbody>
      </table>
    </div>
  )
}
