class User < ApplicationRecord
  has_many :friendered_relationships, :class_name => 'Friendship', :foreign_key => 'friender_id'
  has_many :friendeed_relationships, :class_name => 'Friendship', :foreign_key => 'friendee_id'
  has_many :groups, through: :user_group
  has_many :user_groups
end
