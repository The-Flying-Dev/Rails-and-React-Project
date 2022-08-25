import React, { useState, useEffect } from 'react'
import { Routes, Route } from 'react-router-dom';

import NavBar from './NavBar';

import LoginPage from '../pages/LoginPage';
import CircuitList from '../pages/CircuitList';
import NewCircuit from '../pages/NewCircuit';

function App() {

  const [user, setUser] = useState(null);

  useEffect(() => {
    // auto-login
    fetch("/me").then((r) => {
      if (r.ok) {
        r.json().then((user) => setUser(user));
      }
    });
  }, []);

  
  // go to login page when user is not logged in, passes setUser as prop
  if (!user) return <LoginPage onLogin={setUser} /> 

  return (
    <>
      <NavBar user={user} setUser={setUser} />
      <main>
        <Routes>
          <Route path='/new' element={<NewCircuit user={user} />} />
          <Route path='/' element={<CircuitList/>} />
        </Routes>
      </main>
    </>
  );
}

export default App;