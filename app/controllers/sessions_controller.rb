class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:notice] = "You have logged in successfully. Welcome to AbirBlog!"
      redirect_to user
    else
      flash.now[:alert]="Please input your login details again."
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You have logged out from AbirBlog"
    redirect_to root_path
  end

end
