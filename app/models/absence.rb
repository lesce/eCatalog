class Absence < ActiveRecord::Base
  belongs_to :student
  belongs_to :course
  validates :date , presence: true
end
