# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  password_digest :string
#  username        :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
  #password=, password_confirmation, authenticate
  has_secure_password

  has_many :circuits
  
  validates :username, presence: true, uniqueness: true
end
