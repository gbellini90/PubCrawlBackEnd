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

35.times do
  User.create!(
    name:"#{Faker::Name.unique.name}",
    username:"#{Faker::Internet.unique.username}",
    age:rand(21..50),
    bio:"#{Faker::TvShows::MichaelScott.quote}",
    pic:"#{UiFaces.face}",
    password:"password")
end

User.create!(name:"Gabby", username:"gbellini", age:28, bio:"Hey, I'm Gabby", pic:"http://pngimg.com/uploads/burger_sandwich/burger_sandwich_PNG4133.png", password:"hi")
