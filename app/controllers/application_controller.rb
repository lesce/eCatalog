class ApplicationController < ActionController::Base
  protect_from_forgery
  private
  def current_user 
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
  end
  def is_login
    unless current_user
      redirect_to '/login'
    end
  end
  helper_method :current_user , :is_login
end
