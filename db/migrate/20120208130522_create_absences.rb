class CreateAbsences < ActiveRecord::Migration
  def change
    create_table :absences do |t|
      t.date :date
      t.integer :student_id
      t.integer :course_id
      t.timestamps
    end
  end
end
