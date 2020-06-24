





function main(){

  // grab the form node off the DOM
  const form = document.querySelector('form')
  // bind the form to an event (submit)
  form.addEventListener('submit', function(event){
    //   prevent defailt behavior of form
    event.preventDefault()

    //     scrape the data off the input fields
    const comment = event.target['comment-field'].value

    //     create a p tag with that info
    const pTag = document.createElement('p')
    pTag.innerText = comment

    //     throw the ptag inside of the comments-container
    const commentsContainer = document.querySelector('#comments-container')
    commentsContainer.append(pTag)


    // clear the form
    form.reset()
  })
}

main()












































// grab the button and store in a js var
const alertBtn = document.querySelector('#alert-btn')

// bind an event listener (specifically a click event
alertBtn.addEventListener('click', function(){
  // once the event happens:
  //    alert something 
  alert('hello')
})



const consoleBtn = document.getElementById('console-btn')

consoleBtn.addEventListener('click', function(){
  console.log('log this')
})

