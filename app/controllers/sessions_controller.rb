class SessionsController < ApplicationController
  def create
    @user = User.autheticate(params[:email], params[:password])
    if @user
      flash[:notice] = "You've signed in."
      session[:user_id] = @user.id
      redirect_to "/"
    else
      flash[:alert] = "There was a problem signing in. Please try again."
      redirect_to signin_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:nnotice] = "You've signed out."
    redirect_to "/"
  end
end