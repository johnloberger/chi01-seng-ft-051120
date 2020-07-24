





const initialState = []

export default function paintingsReducer(state = initialState, action) {
  switch (action.type) {
    case 'FETCH_PAINTINGS_SUCCESS':
      return [...action.paintings]
    case 'DELETE_PAINTING':
      const updatedPaintings = state.filter(p => p.id !== action.id)
      return updatedPaintings
    default:
      return state
  }
}
