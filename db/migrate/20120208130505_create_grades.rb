class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.decimal :value
      t.date :date

      t.timestamps
    end
  end
end
