class SessionsController < ApplicationController
  def new
    # @user = User.new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.user_id
      redirect_to @user
    else
      flash[:message] = "Authentication fail"
      redirect_to login_path
    end
  end


  # def destroy
  #   session.delete(:user_id)
  #   # session[:user_id] = nil
  #   flash[:notice] = 'Logout Successful'
  #   redirect_to login_path
  # end

end