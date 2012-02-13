class CatalogsController < ApplicationController
  def index
    @students = current_user.groups[0].students
  end
  def show
    @grades = []
    courses = current_user.groups[0].courses.collect  { |x| x.id }
    @grades = Grade.order('date').where(course_id:courses).collect { |x| [x.date,x.value] }
    
  end
end
