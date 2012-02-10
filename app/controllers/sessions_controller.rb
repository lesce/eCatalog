class SessionsController < ApplicationController
  def new 
  end
  
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to login_index_path
    else
      flash[:error] = "Invalid email or password"
      redirect_to login_index_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_index_path
  end
end
