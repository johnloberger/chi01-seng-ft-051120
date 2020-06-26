




// Grab and render the animals in my rails BE
//
// Create a new animal using the form
//
// Bonus: Delete an animal



function main(){
  fetchAnimals()
  createFormListener()
}



function createFormListener(){
  const form = document.querySelector('form')
  form.addEventListener('submit', function(e){
    e.preventDefault()
    console.log(e)

    const formData = {
      name: e.target['name'].value,
      gender: e.target['gender'].value,
      species: e.target['species'].value
    }

    form.reset()

    const reqObj = {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(formData)
    }

    fetch('http://localhost:3000/animals', reqObj)
    .then(resp => resp.json())
    .then(animal => {
      renderAnimal(animal)
    })

  })


  // grab the form
  // bind it to an event listener (submit)
  //
  // once submitted:
  //   preventDefault
  //   scrape the formData
  //   clear the form
  //   
  //   update the BE
  //
  //   update the FE
  //
}

function renderAnimal(animal){
  const tbody = document.querySelector('tbody')
  const row = `<tr><td>${animal.name}</td><td>${animal.gender}</td><td>${animal.species}</td></tr>`

  tbody.innerHTML += row
}


function fetchAnimals(){
  fetch('http://localhost:3000/animals')
  .then(resp => resp.json())
  .then(animals => {
    animals.forEach(function(animal){
      renderAnimal(animal)
    })
  })


  // define the url "http://localhost:3000/animals"
  // send a fetcdh req to that url
  // receive back  jsonData (an arr of animal obj)
  //  iterate over the array
  //    for each animal obj:
  //      create a new row in the table
}



main()
