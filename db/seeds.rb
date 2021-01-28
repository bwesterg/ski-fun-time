# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Favorite.destroy_all
Trail.destroy_all
User.destroy_all


uncle_bob = Trail.create(name: "Uncle Bob's", difficulty: "Green")
easy_way = Trail.create(name: "Easy Way", difficulty: "Green")
sundance = Trail.create(name: "Sundance", difficulty: "Blue")

sam = User.create(name: "Sam")

Favorite.create(user: sam, trail: uncle_bob, has_skied: false)



