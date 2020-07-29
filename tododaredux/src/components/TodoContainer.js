


import React from 'react'
import TodoCard from './TodoCard'
import { connect } from 'react-redux'


class TodoContainer extends React.Component {
  render(){
    return <div>{
      this.props.todos.map(todoObj => {
        return <TodoCard {...todoObj} />
      })
    }</div>
  }

}


const mapStateToProps = (state) => {
  return {
    todos: state.todos
  }
}

export default connect(mapStateToProps, null)(TodoContainer)
