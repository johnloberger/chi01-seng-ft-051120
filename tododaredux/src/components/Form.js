

import React from 'react'
import { createTodoSuccess } from '../actions/todo'
import { connect } from 'react-redux'


class Form extends React.Component {
  state = { task: ''}


  handleChange = (e) => {
    this.setState({
      task: e.target.value
    })
  }

  handleSubmit = (e) => {
    e.preventDefault()
    const newTodo = {...this.state, completed: false}

    const reqObj = {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(newTodo)
    }

    fetch('http://localhost:3000/todos', reqObj)
    .then(resp => resp.json())
    .then(newTodo => {
      this.props.createTodoSuccess(newTodo)
      this.setState({
        task: ''
      })
    })


  }

  render(){
    return <div>
      <form onSubmit={this.handleSubmit}>
        <input type='text' value={this.state.task} onChange={this.handleChange} />
        <input type='submit' value='add todo'/>
      </form>
    </div>
  }

}

const mapDispatchToProps = {
  createTodoSuccess
}

export default connect(null, mapDispatchToProps)(Form)





