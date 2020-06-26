




let allPokemonData = []
const pokemonContainer = document.querySelector('#pokemon-container')
const pokemonSearchInput = document.querySelector('#pokemon-search-form')
const pokemonPostForm = document.querySelector('#pokemon-post-form')

fetch('http://localhost:3000/pokemon')
  .then((responseObject) => responseObject.json())
  .then((pokeJSONData) => {
    console.log(pokeJSONData)
    allPokemonData = pokeJSONData

    pokemonContainer.innerHTML = renderAllPokemon(pokeJSONData)
  })

pokemonSearchInput.addEventListener('input', (event) => handleSearchInput(event, allPokemonData, pokemonContainer))

pokemonContainer.addEventListener('click', (event) => handleClick(event, allPokemonData))

pokemonPostForm.addEventListener('submit', (event) => {
  handleSubmitPokemon(event, pokemonContainer)
}) 




//X  grab the form
// bind a listener to the form ( submit)
//  once submitted:
//    preventdefault 
//    scrape the formdata
//    update the Backend with the form submission
//    i.e a fetch (POST)
//    render that new pokemon to the fe
//
//
//
//  X Grb the form
//  X listen to the form
//   X update the backend
//   update the frontend
//
//
//  listen to the click
//    remove from the BE
//    update the FE
//
//
//
//
