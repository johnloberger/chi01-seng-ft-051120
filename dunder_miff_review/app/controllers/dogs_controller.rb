class DogsController < ApplicationController

  def index
    if flash[:sorted]
      @dogs = Dog.sorted
    else
      @dogs = Dog.all
    end
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def sort
    flash[:sorted] = true
    redirect_to dogs_path
  end

end
