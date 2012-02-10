class AddParentEmailToStudents < ActiveRecord::Migration
  def change
    add_column :students, :parent_email, :string
  end
end
