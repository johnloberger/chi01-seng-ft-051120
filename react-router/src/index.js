
import React from 'react';
import ReactDOM from 'react-dom'; import App from './App';
import { BrowserRouter } from 'react-router-dom'


// BroswerRouter - Gives us access to React Router's functionality. We wrap our entire app inside of BrowserRouters
// Link -> Analogous to atag, it is a component that will update the url with to path that you provide
// Route -> Route will conditionally render a component if the path matches the url in the browser
// Switch -> makes a conditional and renders the first Route that matches


import 'semantic-ui-css/semantic.min.css';

ReactDOM.render(
  <BrowserRouter>
    <App />
  </BrowserRouter>,
  document.getElementById('root')
);

