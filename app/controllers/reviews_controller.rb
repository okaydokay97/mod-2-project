class ReviewsController < ApplicationController
  before_action :logged_in?

  def new
    @review = Review.new
    # if session[:user_id]
    #   @current = User.find(session[:user_id])
    end 
  end

  def create
    @review = Review.new(review_params)
    # @order.user_id = session[:user_id]
    # if @review.save
    #   Review.find(@review.user_id)
    #   redirect_to @review
    # else
    #   render :new
    # end
  end



  def show 
    @review = Review.find(params[:id])
  end
  
  def edit
    @review = Review.find(params[:id])
  end

  def update 
    @review = Review.find(params[:id])
    @review.update(review_params)
    redirect_to review_path(@review)
  end

  def delete
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to user_path(@review.user)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
