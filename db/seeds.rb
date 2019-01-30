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

User.create!(name:"Gabby", age:"28", username:"gbellini", bio:"hey", pic:"pic")
User.create!(name:"Ji", age:"25", username:"jishin", bio:"hey it's ji", pic:"pic")
User.create!(name:"Sam", age:"21", username:"samb", bio:"hey it's sam", pic:"pic")
