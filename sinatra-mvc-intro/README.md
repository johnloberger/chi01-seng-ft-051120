# Sinatra and MVC intro

## Objectives

- Define MVC
  * Models: Responsible for database knowledge, operations, and business logic on data
  * Views: Responsible for visible stuff AND taking in user interactions
  * Controllers: Responsible for deciding which model to call on based on some view interaction, and also which view to respond with that uses that model info

- Review the request/response cycle
  * HTTP
  * Method vs URL
  * Ingredients of a "route"

- Walk through a Sinatra app layout
- Use Sinatra Controllers to:
  * Respond with templated HTML using .erb
  * Explore dynamic params in route URLs
  * Explore  params in query strings at the end of route URLs
- Use Sinatra Controllers to access Model data
- Link from response to the next request
- Explore redirects

- Explore 3 ways to get params to a Sinatra controller:
  * Dynamic url pattern eg '/books/:id' => {id: "5"}
  * Query string eg 'books/3?detail_level=all&mobile=false => {detail_level: "all", mobile: false}
  * Form inputs

- Work with routes that DON'T use 'get' as the HTTP verb
- Discuss default behaviors on the web ie browser elements and default http methods
- Submit some forms
- Process some params data
- ***explore nesting of data???