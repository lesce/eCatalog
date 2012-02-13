class User < ActiveRecord::Base
  has_secure_password
  has_many :groups
  validates :name , :email , presence: true
  validates :email , uniqueness: true
  validates :email , email_format: { message: 'Formatul Emailului este incorect'}
end
