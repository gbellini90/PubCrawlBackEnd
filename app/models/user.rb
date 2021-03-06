class User < ApplicationRecord
  has_many :friendered_relationships, :class_name => 'Friendship', :foreign_key => 'friender_id'
  has_many :friendeed_relationships, :class_name => 'Friendship', :foreign_key => 'friendee_id'
  has_many :groups, through: :user_group
  has_many :user_groups
  has_secure_password

  validates :username, presence:true, uniqueness:true
  validates :password, presence: true

  def myGroups
    Group.all.collect{|group|
      group.users.collect{|user|
        user == self ? group : nil}
      }
  end

  def frienderedBuds
    self.friendered_relationships.collect{|friendship|
      friendship.accepted ? friendship.friendee : nil
    }.compact
  end

  def friendeedBuds
    self.friendeed_relationships.collect{|friendship|
      friendship.accepted ? friendship.friender : nil
    }.compact
  end

  def requestedfrienderedBuds
    self.friendered_relationships.collect{|friendship|
      !friendship.accepted ? friendship.friendee : nil
    }.compact
  end

  def requestedfriendeedBuds
    self.friendeed_relationships.collect{|friendship|
      !friendship.accepted ? friendship.friender : nil
    }.compact
  end

  def friends
    (self.friendeedBuds + self.frienderedBuds)-[self]
  end

  def pendingFriends
    (self.requestedfriendeedBuds + self.requestedfrienderedBuds) - [self]
  end

  def pendingFrienders
    self.requestedfrienderedBuds
  end

  def pendingFriendees
    self.requestedfriendeedBuds
  end

  def usersWithoutBuds
    (User.all - self.frienderedBuds -  self.friendeedBuds - self.requestedfriendeedBuds - self.requestedfrienderedBuds) - [self]
  end

end
