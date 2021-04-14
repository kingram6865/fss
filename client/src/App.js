import './App.css';
import { Switch, Route } from 'react-router-dom'
// import Schedule from './components/Schedule/Schedule'
import Appointments from './screens/Appointments/Appointments'
import SessionData from './screens/SessionData/SessionData'
import InstructorData from './screens/InstructorData/InstructorData'
import LocationData from './screens/LocationData/LocationData'
import Home from './screens/Home/Home'

function App() {
  return (
    <div className="App">
    <Switch>
      <Route exact path="/" render={ (props) => <Home />} />
      <Route exact path="/schedule" render={ (props) => <Appointments />} />
      <Route exact path="/sessions" render={(props) => <SessionData />} />
      <Route exact path="/locations" render={(props) => <LocationData />} />
      <Route exact path="/instructors" render={(props) => <InstructorData />} />
    </Switch>
    </div>
  );
}

export default App;
