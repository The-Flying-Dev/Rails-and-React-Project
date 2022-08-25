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
class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  
  has_many :circuits
end
