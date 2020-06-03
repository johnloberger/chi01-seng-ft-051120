class NestsController < ApplicationController
  get '/nests/new' do
    @nest = Nest.new
    @birds = Bird.all
    erb :'nests/new'
  end

  post '/nests' do
    p params
    @nest = Nest.new(params[:nest])

    if @nest.valid?
      @nest.save
      redirect '/nests'
    else
      @birds = Bird.all
      erb :'/nests/new'
    end
  end

  get '/nests' do
    @nests = Nest.all
    erb :'nests/index'
  end
end