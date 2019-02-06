class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :creator_id, :user_groups
end
