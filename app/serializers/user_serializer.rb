class UserSerializer < ActiveModel::Serializer
  has_many :comments
  has_many :recipes
  attributes :id, :username
end
