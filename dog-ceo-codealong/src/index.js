//////////// VARIABLES /////////////
const imgContainer = document.getElementById("dog-image-container")
const nameContainer = document.getElementById("dog-breeds")
const filter = document.getElementById("breed-dropdown")

//////////// FETCH DOG IMAGE FUNCTIONS /////////////
function fetchDogImgs(){
  fetch("https://dog.ceo/api/breeds/image/random/4")
    .then(resp => resp.json())
    .then(dogsImgData => addDogImgs(dogsImgData))
    .catch(err => console.log(err))
}

function addDogImgs(dogsImgData){
  const dogsImgArr = dogsImgData.message
  dogsImgArr.forEach(dogImg => addDogImg(dogImg))
}

function addDogImg(dogImg){
  const img = `<img src=${dogImg} alt="">`
  imgContainer.innerHTML += img
}

//////////// FETCH DOG NAME FUNCTIONS /////////////
function fetchDogNames(){
  fetch("https://dog.ceo/api/breeds/list/all")
    .then(resp => resp.json())
    .then(dogsNameData => addDogNames(dogsNameData))
    .catch(err => console.log(err))
}

function addDogNames(dogsNameData){
  const dogNameArr = Object.keys(dogsNameData.message)
  dogNameArr.forEach(dogName => addDogName(dogName))
}

function addDogName(dogName){
  const li = `<li>${dogName}</li>`
  nameContainer.innerHTML += li
}

//////////// CHANGE DOG NAME COLOR FUNCTIONS /////////////
function changeNameColor(){
  if (event.target.tagName === "LI"){
    event.target.style.color = "powderblue"
  }
}


//////////// FILTER DOG NAMES FUNCTIONS /////////////
function filterDogNames(){
  const filterChoice = event.target.value
  const nameCollect = nameContainer.children
  showAllNames(nameCollect)
  if (filterChoice !== "all"){
    hideDogNames(nameCollect, filterChoice)
  }
}

function hideDogNames(nameCollect, filterChoice){
  for (let name of nameCollect){
    const liChar = name.textContent[0]
    if (liChar !== filterChoice){
      name.style.display = "none"
    }
  }
}

function showAllNames(nameCollect){
  for (let name of nameCollect){
    name.style.display = "list-item"
  }
}


//////////// EVENT LISTENERS /////////////
nameContainer.addEventListener("click", changeNameColor)
filter.addEventListener("change", filterDogNames)


//////////// INVOKED FUNCTIONS /////////////
fetchDogImgs()
fetchDogNames()
