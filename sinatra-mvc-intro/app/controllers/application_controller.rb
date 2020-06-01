class ApplicationController < Sinatra::Base
  set :views, 'app/views'

  get '/' do
    @books = Book.all
    p @books
    p @books.first
    "Hello World"
  end

  get '/books' do
    @books = Book.all
    p "IN THE BOOKS INDEX ROUTE----------------------"
    erb :index
  end
  
  get '/books/redirect-me' do
    p "AT redirect ROUTE"
    redirect '/cats'
  end

  get '/books/:id' do
    p "AT DYNAMIC ROUTE"
    p params[:id]
    @book = Book.find(params[:id])
    p @book
    erb :show
  end


  get '/cats' do
    p "Meow World"
    @catvar = "feline"
    redirect '/dogs'
  end

  get '/dogs' do
    p @catvar
    p "Woof World"
    redirect '/books'
  end

end
