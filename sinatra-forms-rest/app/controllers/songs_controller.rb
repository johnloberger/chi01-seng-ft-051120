class SongsController < ApplicationController

  get '/songs/new' do
    @birds = Bird.all
    erb :'songs/new'
  end

  get '/songs/:id' do
    @song = Song.find(params[:id])
    p @song.bird
    erb :'songs/show'
  end

  get '/songs' do
    @songs = Song.all
    p @songs
    erb :'songs/index'
  end

  post '/songs' do
    song = Song.create(params[:song])
    redirect "/songs/#{song.id}"
  end
end