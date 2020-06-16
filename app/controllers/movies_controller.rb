class MoviesController < ApplicationController
# before_action :logged_in?
  
  def index
    @movies = Movie.all
  end 
  
  def show
    @movie = Movie.find(params[:id])
  end

end
