class ApplicationController < Sinatra::Base
  set :views, 'app/views'
  set :method_override, true

  # get '/' do
  #   @books = Book.all
  #   p @books
  #   p @books.first
  #   "Hello World"
  # end

  # get '/3rd-rev-desc' do
  #   Book.third.snippet.downcase.reverse.capitalize
  # end

  # List of All Books
  get '/books' do
    @books = Book.all
    p "IN THE BOOKS INDEX ROUTE----------------------"
    erb :index
  end
  
  # get '/books/redirect-me' do
  #   p "AT redirect ROUTE"
  #   redirect '/cats'
  # end

  # Form for New Book
  get '/books/new' do
    p "IN NEW. PARAMS IS: --------------------"
    p params
    @author = params[:by]
    erb :new
  end

  # Create new Book in db
  post '/books' do
    p "IN CREATE! PARAMS IS: ?????????????????"
    p params
    # Book.create(title: "cool", author: "Gary", snippet: "the book of books")
    book = Book.create(title: params[:title], author: params[:author], snippet: params[:snippet])
    redirect "/books/#{book.id}"
  end

  # Show one book's info
  get '/books/:id' do
    p "AT DYNAMIC ROUTE"
    p params[:id]
    find_book
    p @book
    erb :show
  end

  # Form for editing a book
  get '/books/:id/edit' do
    find_book
    erb :edit
  end

  # Submission of edit form to update a book
  put '/books/:id' do
    find_book
    p "IN UPDATE! PARAMS IS: !!!!!!!!!!!!!!!!"
    p params
    @book.update(params[:book])
    p @book
    redirect "/books/#{@book.id}"
  end
  
  
  
  # get '/cats' do
  #   p "Meow World"
  #   @catvar = "feline"
  #   redirect '/dogs'
  # end
  
  # get '/dogs' do
  #   p @catvar
  #   p "Woof World"
  #   redirect '/books'
  # end

  private

  def find_book
    @book = Book.find(params[:id])
  end
  
end
