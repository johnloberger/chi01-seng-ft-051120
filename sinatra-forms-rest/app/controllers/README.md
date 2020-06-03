# AM Objectives

- Review Active Record One to Many Association syntax and methods
- Use associations to display info in a view
- Create an object that's associated to another object
- Work with an HTML select (dropdown menu)
- Review web dev workflow best practices
  * small, quick feedback loops
  * checking params often
  * using the browser as final proof
  * Google as needed
  * Commenting things as we understand them


A Bird show page should list all of that Bird's Songs.
get '/birds/:id'

A Song show page should display the Song's Bird.

A user should be able to create a new Song and assign it to a Bird.

---

# PM Objectives

- Review Active Record Many to Many Association syntax and methods
- Use associations to display info in a view
- Create an object that's associated with many other objects
- Work with HTML checkboxes
- Add validation and error handling to a form submission flow

A user should be able to create a new Nest and assign it to multiple Birds.

A Nest should not be creatable if it lacks a tree_name

***Bonus: A user should be able to edit a Bird and assign it multiple Nests.

Intstead of...       We can do...

.create              .new, then .save

.update              .assign_attributes, then .save