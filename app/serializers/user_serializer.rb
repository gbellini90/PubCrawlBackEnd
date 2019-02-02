class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :username, :bio, :pic, :friendered_relationships, :friendeed_relationships, :user_groups
end
