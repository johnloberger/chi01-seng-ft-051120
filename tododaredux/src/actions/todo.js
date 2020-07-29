



export const fetchTodosSuccess = (todos) => {
  return {
    type: 'FETCH_TODOS_SUCCESS',
    todos
  }
}

export const createTodoSuccess = (newTodo) => {
  return {
    type: 'CREATE_TODO_SUCCESS',
    newTodo
  }
}

export const deleteTodoSuccess = (id) => {
  return {
    type: 'DELETE_TODO_SUCCESS',
    id
  }
}
