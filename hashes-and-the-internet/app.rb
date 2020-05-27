# require 'rest-client'
require 'net/http'
require 'json'
require 'pry'

url = "https://www.googleapis.com/books/v1/volumes?q=ruby+programming"

uri = URI(url)

# Consuming an API:

# 1) Get the JSON data from the url endpoint
# RESTCLIENT STYLE
# response = RestClient.get(url)

response = Net::HTTP.get(uri)

# RESTCLIENT STYLE
# json_string = response.body

# 2) Turn that data into something we can work with

# RESTCLIENT STYLE
# response_hash = JSON.parse(json_string)

response_hash = JSON.parse(response)

# 3) Work with the data in Ruby terms to get our desired result
books = response_hash["items"]

books.each do |book_info|
  title = book_info["volumeInfo"]["title"]
  if book_info["volumeInfo"]["authors"]
    authors = book_info["volumeInfo"]["authors"].join(", ")
  else
    authors = "N/A"
  end
  
  description = book_info["volumeInfo"]["description"]

  # Book.create(title: title, authors: authors, snippet: description)
  puts <<-OUTPUT
    =====================================

    #{title}

    #{authors}

    #{description}

    =====================================
  OUTPUT
end

binding.pry
0