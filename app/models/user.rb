class User < ApplicationRecord
  has_many :frienders, through: :friender_friendships, source: :friender
  has_many :friender_friendships, foreign_key: :friendee_id, class_name: "Friendship"
  has_many :friendees, through: :friendee_friendships, source: :friendee
  has_many :friendee_friendships, foreign_key: :friender_id, class_name: "Friendship"
  has_many :groups, through: :user_group
  has_many :user_groups
end
