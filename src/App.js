import React from 'react';
import logo from './logo.svg';
import './App.css';

function App() {
    return (
        <div className="App">
            <header className="App-header">
                <img src={logo} className="App-logo" alt="logo"/>
                <code>It works on my machine!</code>
                <div>
                    <code>git clone git@github.com:jecklgamis/reactjs-app-example.git</code>
                </div>
            </header>
        </div>
    );
}

export default App;
