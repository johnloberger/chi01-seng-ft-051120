import React from 'react'
import MushroomsContainer from './MushroomsContainer'
import MushroomDetails from './MushroomDetails'
import mushrooms from '../mushrooms_data.js'

class MushroomsPage extends React.Component {
  constructor(){
    super()
    this.state = {
      clickedMushroom: {}
    }
  }

  clickHandler = (clickedMushroom) => {
    this.setState({
      clickedMushroom: clickedMushroom
    })
  }

  render(){
    return(
      <div>
        <MushroomDetails clickedMushroom={this.state.clickedMushroom}/>
        <MushroomsContainer mushrooms={mushrooms} clickHandler={this.clickHandler}/>
      </div>
    )
  }
}

export default MushroomsPage
