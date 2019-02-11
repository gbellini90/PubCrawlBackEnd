class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :creator_id, :user_groups
  has_many :user_groups
  has_many :users, through: :user_groups
  has_many :pubcrawls
end
