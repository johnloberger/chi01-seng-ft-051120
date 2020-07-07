
const BASE_URL = "http://localhost:3000"
const TRAINERS_URL = `${BASE_URL}/trainers`
const POKEMONS_URL = `${BASE_URL}/pokemons`


function main(){
  fetchTrainers()
  createAddPokemonListener()
}

function createAddPokemonListener(){
  const main = document.querySelector('main')

  main.addEventListener('click', function(event){
    if (event.target.className === 'add') {
      const ul = event.target.nextElementSibling
      const childrenCount = ul.children.length

      if (childrenCount > 5) {
        alert('You have the max number of pokemon')
        return
      } 
      addPokemon(event)
    } else if( event.target.className === 'release') {
      releasePokemon(event)
    }
  })
}

function releasePokemon(event) {
  const pokeId = event.target.dataset.pokemonId
  const url = POKEMONS_URL + '/' + pokeId
  fetch(url, {method: 'DELETE'})
  .then(resp => resp.json())
  .then(data => {
    event.target.parentNode.remove()

  })
}



function addPokemon(event){
      const trainerId = event.target.dataset.trainerId

      const reqObj = {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({trainer_id: trainerId})
      }

      fetch(POKEMONS_URL, reqObj)
      .then(resp => resp.json())
      .then(pokemon => {
        const ul = event.target.nextElementSibling
        ul.innerHTML += renderPokeLi(pokemon)
      })

}

function fetchTrainers(){
  fetch(TRAINERS_URL)
  .then(resp => resp.json())
  .then(trainers => {
    trainers.forEach( trainer => {
      const main = document.querySelector('main')

      const pokemons = trainer.pokemons.map(renderPokeLi).join('')

      const pokeCard = `<div class="card" data-id="${trainer.id}"><p>${trainer.name}</p><button class='add' data-trainer-id="${trainer.id}">Add Pokemon</button><ul>${pokemons}</ul></div>`

      main.innerHTML += pokeCard

    })
  })
}

function renderPokeLi(pokemon) {
  return `<li>${pokemon.nickname} (${pokemon.species}) <button class="release" data-pokemon-id="${pokemon.id}">Release</button></li>`
}


main()




