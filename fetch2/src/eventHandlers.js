



function handleSearchInput(event, allPokemonData, pokemonContainer) {
  const filteredPokes = allPokemonData.filter(pokeObj => {
    return pokeObj.name.includes(event.target.value.toLowerCase())
  })
  const filteredPokeHTML = renderAllPokemon(filteredPokes)
  pokemonContainer.innerHTML = filteredPokeHTML ? filteredPokeHTML : `<p><center>There are no Pokémon here</center></p>`
}


function handleSubmitPokemon(event, pokemonContainer){
  event.preventDefault()
  console.log(event.target['name'].value)
  const formData = {
    name: event.target['name'].value,
    sprites: {
      front: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png"
      // front: event.target['image'].value
    }
  }
  event.target.reset()

  const reqObj = {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify(formData)
  }

  fetch('http://localhost:3000/pokemon', reqObj)
  .then(resp =>   resp.json())
  .then(newpokemon => {
    const newPokeString = renderSinglePokemon(newpokemon)
    pokemonContainer.innerHTML += newPokeString

  })








//  once submitted:
//    X preventdefault 
//    X scrape the formdata
//    update the Backend with the form submission
//    i.e a fetch (POST)
//    render that new pokemon to the fe
}





function handleClick(event, allPokemonData) {
  if (event.target.tagName === 'IMG') {
    const clickedPokemon = allPokemonData.find((pokemonObject) => pokemonObject.id == event.target.dataset.id)
    event.target.src = (event.target.src === clickedPokemon.sprites.front ? clickedPokemon.sprites.back : clickedPokemon.sprites.front)
  } else if (event.target.tagName === 'BUTTON'){
    const id = event.target.dataset.id


    const reqObj = {
      method: 'DELETE'
    }

    fetch(`http://localhost:3000/pokemon/${id}`, reqObj)
    .then(resp => resp.json())
    .then(data => {
      console.log('hello', data)
      event.target.parentNode.parentNode.remove()
    })

  }




  // check what event.target is
  //  if it's an image
  //   then run the code below(i.e toggle the image)
  //
  //  if its a delete btn:
  //     then remove the pokemon from the be
  //     find the id of the pokemon that just got clicked
  //     send a fetch request (DELETE)
  //
  //     remove that pokeCard from the frontend




}

/************************* Helper Fns for Producing HTML **********************/
function renderAllPokemon(pokemonArray) {
  return pokemonArray.map(renderSinglePokemon).join('')
}




function renderSinglePokemon(pokemon) {
  return (`
  <div class="pokemon-card">
    <div class="pokemon-frame">
      <h1 class="center-text">${pokemon.name}</h1>
      <div class="pokemon-image">
        <img data-id="${pokemon.id}" data-action="flip" class="toggle-sprite" src="${pokemon.sprites.front}">
      </div>
      <button data-id=${pokemon.id} data-action="delete" class="pokemon-button">Delete</button>
    </div>
  </div>`)
}














