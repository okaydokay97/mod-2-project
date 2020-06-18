class ReviewsController < ApplicationController
  before_action :logged_in?
  def new
    @review = Review.new
    if session[:user_id]
      @current = User.find(session[:user_id])
    end 
  end

  def create
    @review = Review.new(create_review_params)
    @review.user_id = session[:user_id]
    if @review.save
      redirect_to review_path(@review)
    else
      render :new
    end
  end

  def show 
    @review = Review.find(params[:id])
  end
  
  def edit
    @review = Review.find(params[:id])
  end

  def update 
    @review = Review.find(params[:id])
    @review.update(edit_review_params)
    redirect_to review_path(@review)
  end

  def destroy
    @review = Review.find(params[:id])
    @user = @review.user
    @review.delete
    redirect_to user_path(@user)
  end



  private

  def edit_review_params
    params.require(:review).permit(:content, :rating)
  end

  def create_review_params
    params.require(:review).permit(:content, :rating, :movie_id,)
  end

end
