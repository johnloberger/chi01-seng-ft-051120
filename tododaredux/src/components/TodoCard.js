

import React from 'react'

import { connect } from 'react-redux'
import { deleteTodoSuccess } from '../actions/todo'

class TodoCard extends React.Component {

  handleDelete = () => {
    const { id } = this.props


    fetch(`http://localhost:3000/todos/${id}`, { method: 'DELETE'})
    .then(resp => resp.json())
    .then(data => {
      console.log('data', data)
      this.props.deleteTodoSuccess(id)
    })
    
  }

  render(){
    console.log(this.props, '------');
    return <div>
      <p>{this.props.task} <button onClick={this.handleDelete}>X</button></p>
    </div>
  }

}

const mapDispatchToProps = {
  deleteTodoSuccess
}

export default connect(null, mapDispatchToProps)(TodoCard)
