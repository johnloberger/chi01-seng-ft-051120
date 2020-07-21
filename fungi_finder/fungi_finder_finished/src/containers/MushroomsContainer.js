import React from 'react'
import MushroomCard from '../components/MushroomCard'

function MushroomsContainer(props) {

  const renderMushroomCards = () => {
    return props.mushrooms.map( mushroom => {
      return <MushroomCard
        mushroom={mushroom}
        clickHandler={props.clickHandler}
      />
    })
  }

  return(
    <div>
			 <div className="ui four column grid">
				<div className="row">
          {renderMushroomCards()}
				</div>
	  	</div>
		</div>
  )
}

export default MushroomsContainer
