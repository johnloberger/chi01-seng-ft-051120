

export default function Todos(state=[], action) {
  switch(action.type) {
    case 'FETCH_TODOS_SUCCESS':
      return [...action.todos]
    case 'CREATE_TODO_SUCCESS':
      return [...state, action.newTodo]
    case 'DELETE_TODO_SUCCESS':
      return state.filter(todo => todo.id !== action.id)
    default: 
      return state
  }
}
