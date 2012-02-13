class Grade < ActiveRecord::Base
  belongs_to :student
  belongs_to :course
  validates :value , presence: true , numericality: true ,length: { in: 1..10 }
  validates :date , presence: true
end
