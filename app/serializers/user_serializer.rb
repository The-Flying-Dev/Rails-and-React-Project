class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  
  has_many :circuits
end
