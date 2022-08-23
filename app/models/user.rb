class User < ApplicationRecord
  #password=, password_confirmation, authenticate
  has_secure_password

  has_many :circuits
  
  validates :username, presence: true, uniqueness: true
end
