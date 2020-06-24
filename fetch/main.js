



function main(){
  // grab all of the BE book data and render
  fetchBooks()

  // make form work and save the form data
  createFormListener()
}

function createFormListener(){
  const form = document.querySelector('form')

  form.addEventListener('submit', function(event){
    event.preventDefault()

    const formData = {
      title: event.target['title'].value,
      author: event.target['author'].value
    }

    form.reset()


    const reqObj = {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(formData)
    }


    fetch('http://localhost:3000/books', reqObj )
    .then(resp => resp.json())
    .then(book => {
      const bookList = document.getElementById('book-list')
      bookList.innerHTML += `<p>${book.title} - ${book.author}<button class='delete'>remove</button></p>`
    })



  })



  // grab the form
  // listen to the sdubmission of the form
  //
  // once submitted:
  //
  //    prevent default behavior
  //    scrape the formdata
  //    then we need to send the data to the BE
  //    update the FE and add the new book
  //    to the DOM
  //
}


function fetchBooks(){
  fetch('http://localhost:3000/books')
  .then(resp => resp.json())
  .then(books => {
    books.forEach(book => {
      const bookList = document.getElementById('book-list')
      bookList.innerHTML += `<p>${book.title} - ${book.author}<button class='delete'>remove</button></p>`

      // OTHER WAY TO DO IT:
      // const pTag = document.createElement('p')
      // pTag.innerText = `${book.title} - ${book.author}`

      // const button = document.createElement('button')
      // button.className = 'delete'
      // button.innerText = 'remove'

      // pTag.append(button)

      // bookList.append(pTag)
    })
  })




  //  make a fetch req to get the books
  //  loop over boooks array
  //    create a ptag
  //    and append the ptag to the dom
}


main()






