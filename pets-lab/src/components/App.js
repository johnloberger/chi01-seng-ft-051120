

import React from 'react'

import Filters from './Filters'
import PetBrowser from './PetBrowser'

class App extends React.Component {
  constructor() {
    super()

    this.state = {
      pets: [],
      filters: {
        type: 'all'
      }
    }
  }

  onChangeType = (event) => {
    this.setState({
      filters :  { type: event.target.value}
    })
  }

  onFindPetsClick = () => {
    let url = '/api/pets'
    if (this.state.filters.type !== 'all') {
      url = `/api/pets?type=${this.state.filters.type}`
    }

    fetch(url)
    .then(resp => resp.json())
    .then(petsArr => {
      this.setState({
        pets: petsArr
      })
    })
  }
  
  onAdoptPet = (id) => {
    const updatedPets = this.state.pets.map(pet => {
      if(pet.id === id) {
        return {
          ...pet,
          isAdopted: true
        }
      } else {
        return pet
      } 
    })

    this.setState({
      pets: updatedPets
    })

  }

  render() {
    return (
      <div className="ui container">
        <header>
          <h1 className="ui dividing header">React Animal Shelter</h1>
        </header>
        <div className="ui container">
          <div className="ui grid">
            <div className="four wide column">
              <Filters 
                onFindPetsClick={this.onFindPetsClick} 
                onChangeType={this.onChangeType}  />
            </div>
            <div className="twelve wide column">
              <PetBrowser pets={this.state.pets} onAdoptPet={this.onAdoptPet}/>
            </div>
          </div>
        </div>
      </div>
    )
  }
}

export default App
