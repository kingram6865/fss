import './App.css';
import { useState } from 'react'
import { Switch, Route } from 'react-router-dom'
import Appointments from './screens/Appointments/Appointments'
import SessionData from './screens/SessionData/SessionData'
import InstructorData from './screens/InstructorData/InstructorData'
import LocationData from './screens/LocationData/LocationData'
import Home from './screens/Home/Home'
import AdminHome from './screens/AdminHome/AdminHome'
import NewSession from './screens/NewSession/NewSession'

function App() {
  const [permissions, setPermissions] = useState([])
  return (
    <div className="App">
    <Switch>
      <Route exact path="/" render={ (props) => <Home />} />
      <Route exact path="/schedule" render={ (props) => <Appointments userpermissions={permissions} />} />
      <Route exact path="/sessions" render={(props) => <SessionData userpermissions={permissions} />} />
      <Route exact path="/locations" render={(props) => <LocationData userpermissions={permissions} />} />
      <Route exact path="/instructors" render={(props) => <InstructorData userpermissions={permissions} />} />
      <Route exact path="/admin" render={(props) => <AdminHome userpermissions={permissions} />} />
      <Route exact path="/create-session" render={(props) => <NewSession />} />
    </Switch>
    </div>
  );
}

export default App;
