class CreateAbsences < ActiveRecord::Migration
  def change
    create_table :absences do |t|
      t.date :date

      t.timestamps
    end
  end
end
