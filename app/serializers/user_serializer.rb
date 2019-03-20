class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :username, :bio, :pic, :friendered_relationships, :friendeed_relationships, :user_groups

  # def groups
  #   usergroups = UserGroup.all.select do |ug|
  #     ug.user_id == object.id
  #   end
  #   groups = usergroups.map do |group|
  #     group.group
  #   end.compact
  #   groups.map do |group|
  #
  #   {
  #     id: group.id,
  #     name: group.name,
  #     users: group.users,
  #     user_groups: group.user_groups,
  #     creator_id: group.creator_id
  #   }
  # end
  # end

end
