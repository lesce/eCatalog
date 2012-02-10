class Student < ActiveRecord::Base
  has_secure_password
  
  belongs_to :group
  has_many :grades
  has_many :absences

end
