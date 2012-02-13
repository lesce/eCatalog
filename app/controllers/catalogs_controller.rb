class CatalogsController < ApplicationController
  def index
    @students = current_user.groups[0].students
  end
end
