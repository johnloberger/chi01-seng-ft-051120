import React from 'react'

function MushroomDetails(props) {

  const renderDetails = () => {
    if (props.clickedMushroom.details){
      return <p style={{textAlign: "center"}}>{props.clickedMushroom.details}</p>
    } else {
      return <h1 style={{textAlign: "center"}}>Welcome to the Mushroom page!</h1>
    }
  }

  return(
    <div className="ui segment inverted blue mush-details">
      {renderDetails()}
    </div>
  )
}

export default MushroomDetails
