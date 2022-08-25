import React from 'react';

import LoginForm from '../components/LoginForm';
import SignUpForm from '../components/SignUpForm';

export default function LoginPage({ onLogin }) {

  const [showLogin, setShowLogin] = useState(true);

  return (
    <div>
      <h3>Login Page</h3>

      <br />

      {showLogin ? ( 
        <>
          <LoginForm onLogin={onLogin} />
          <br />
          <p>
            Sign up for an account now &nbsp;
            <button onClick={() => setShowLogin(false)}>Sign Up</button>
          </p>
        </>
      ) : (
        <>
          <SignUpForm onLogin={onLogin} />
          <br />

          <p>
            Have an account? &nbsp;
            <button onClick={() => setShowLogin(true)}>Log In</button>
          </p>
        </>
      )}
      
    </div>
  );
}
