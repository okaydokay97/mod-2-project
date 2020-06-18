class MoviesController < ApplicationController
# before_action :logged_in?
  
  def index
    if flash[:sorted]
      @movies = Movie.sort_by_rating
    else
      @movies = Movie.sort_alphabetically
    end
  end 
  
  def show
    @movie = Movie.find(params[:id])
  end

  def sort_rating
    flash[:sorted] = true
    redirect_to movies_path
  end
end
