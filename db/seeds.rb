require 'http'
require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
# Friendship.destroy_all
# Group.destroy_all
# Pubcrawl.destroy_all
# Bar.destroy_all
# User_group.destroy_all
# Pubcrawl_bar.destroy_all

30.times do
  User.create!(
    name:"#{Faker::Name.unique.name}",
    username:"#{Faker::Internet.unique.username}",
    age:rand(21..60),
    bio:"#{Faker::TvShows::MichaelScott.quote}",
    pic:"#{UiFaces.face}")
end

# Friendship.create!(friendee_id:1, friender_id:2)
# Friendship.create!(friendee_id:3, friender_id:12)
# Friendship.create!(friendee_id:4, friender_id:5)
