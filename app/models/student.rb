class Student < ActiveRecord::Base
  belongs_to :group
  has_many :grades
  has_many :absences
  validates :name , :email , :parent_email , presence: true
  validates :email , email_format: { message: 'Formatul Emailului este incorect'}
  validates :parent_email , email_format: { message: 'Formatul Emailului este incorect'}
end
