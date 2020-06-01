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