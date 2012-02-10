class AddProfesorToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :profesor, :string
  end
end
