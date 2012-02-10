class Group < ActiveRecord::Base
  belongs_to :user
  has_many :students
  has_many :courses
end
