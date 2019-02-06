class FriendshipSerializer < ActiveModel::Serializer
  attributes :id, :friendee_id, :friender_id, :accepted
end
