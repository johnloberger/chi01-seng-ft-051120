class BirdsController < ApplicationController

  # Index
  get '/birds' do
    @birds = Bird.all
    erb :'birds/index'
  end

  # New
  get '/birds/new' do
    erb :'birds/new'
  end

  # Show
  get '/birds/:id' do
    @bird = Bird.find(params[:id])
    erb :'birds/show'
  end

  # Create
  post '/birds' do
    Bird.create(params[:bird])
    redirect "/birds"
  end
  
  # Edit
  get '/birds/:id/edit' do
    @bird = Bird.find(params[:id])
    erb :'birds/edit'
  end

  # Update
  put '/birds/:id' do
    p params
    bird = Bird.find(params[:id])
    bird.update(params[:bird])
    redirect "/birds/#{bird.id}"
  end

  # Destroy
  delete '/birds/:id' do
    @bird = Bird.find(params[:id])
    @bird.destroy
    redirect '/birds'
  end

end