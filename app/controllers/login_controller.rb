class LoginController < ApplicationController
  #GET pagina principala
  def index
    if current_user 
      @courses = current_user.groups[0].courses
      @students = current_user.groups[0].students
    end
    @user = User.new
    @student = Student.new
    @course = Course.new
  end
end
