import React from 'react';




import { connect } from 'react-redux'

const Painting = props => {
  console.log('paintprops', props)
  return (
    <div className="item">
      <div className="ui small image">
        <img src={props.painting.image} alt={props.painting.slug} />
      </div>
      <div className="middle aligned content">
        <h1>Are you sure you want to remove {props.painting.title}</h1>
        <div className="ui buttons">
          <div
            onClick={props.handleCancelClick}
            className="ui basic green button"
          >
            No
          </div>
          <div className="ui red basic button" onClick={() => props.deletePainting(props.painting.id)}> Delete It</div>
        </div>
      </div>
    </div>
  );
};


const mapDispatchToProps = (dispatch) => {
  return {
    deletePainting: (id) => {
      const action = { type: 'DELETE_PAINTING', id: id }
      dispatch(action)
    }
  }
}

export default connect(null, mapDispatchToProps)(Painting);



// add a clicklistener
//remove it from the store state i.e dispatch an action that tells the reducer to remove that painting 
// connect this component to mapDispatchTo Props
//
// define the dispatch and the action
//
// i need to update my reducer so that it responds to this new action

