class UsersController < ApplicationController
  before_action :authorized
  skip_before_action :authorized, only: [:new, :create]

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      session[:id] = @user.id
      redirect_to user_path(session[:id])
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end



  private
  def user_params
  # params.require(:user).permit(:age, :img_url)
  params.require(:user).permit(:username, :age, :img_url, :password, :password_confirmation)
  end

end
