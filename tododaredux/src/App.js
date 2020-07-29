import React from 'react';
import logo from './logo.svg';
import './App.css';
import TodoContainer from './components/TodoContainer'
import Form from './components/Form'
import { connect } from 'react-redux'
import { fetchTodosSuccess } from './actions/todo'

class App extends React.Component {
  componentDidMount(){
    fetch('http://localhost:3000/todos')
    .then(resp => resp.json())
    .then(todos => {
      this.props.fetchTodosSuccess(todos)
    })
  }

  render(){
    console.log(this.props)
    return (
      <div className="App">
        <header className="App-header">
        <Form />
        <TodoContainer />
        </header>
      </div>
    );
  }
}

const mapDispatchToProps = {
  fetchTodosSuccess
}

export default connect(null, mapDispatchToProps)(App);
