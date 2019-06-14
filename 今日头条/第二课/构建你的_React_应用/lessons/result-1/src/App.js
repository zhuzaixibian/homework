import React from 'react';
import logo from './logo.jpeg';
import './App.css';
import Oath from './Oath';

class App extends React.Component {
  render() {  //渲染
    return (
      <div className="App">
        <header className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <Oath count={3000}/>
        </header>
      </div>
    );
  }
}

export default App;
