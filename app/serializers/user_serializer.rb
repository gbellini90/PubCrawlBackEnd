class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :username, :bio, :pic, :friender_friendships, :friendee_friendships, :user_groups
end
