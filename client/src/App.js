import './App.css';
import { Switch, Route } from 'react-router-dom'
// import Schedule from './components/Schedule/Schedule'
import Appointments from './screens/Appointments/Appointments'
import SessionData from './screens/SessionData/SessionData'
import Instructors from './screens/Instructors/Instructors'
import Locations from './screens/Locations/Locations'

function App() {
  return (
    <div className="App">
    <Switch>
      <Route exact path="/schedule" render={ (props) => <Appointments />} />
      <Route exact path="/sessions" render={(props) => <SessionData />} />
      <Route exact path="/locations" render={(props) => <Locations />} />
      <Route exact path="/instructors" render={(props) => <Instructors />} />
    </Switch>
    </div>
  );
}

export default App;
