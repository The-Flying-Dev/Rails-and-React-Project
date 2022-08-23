class User < ApplicationRecord
  #password=, password_confirmation, authenticate
  has_secure_password
  
  validates :username, presence: true, uniqueness: true
end
