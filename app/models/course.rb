class Course < ActiveRecord::Base
  belongs_to :group
  has_many :grades
  has_many :absences
  validates :name , :profesor , presence: true
end
