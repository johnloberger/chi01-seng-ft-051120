import React from 'react';

const PaintingShow = props => {
  console.log(props.match.params)

  return (
    <div className="App">
      <h4>THIS IS THE PAINTING SHOW PAGE</h4>
    </div>
  );
};

export default PaintingShow;
