# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Trail.destroy_all
User.destroy_all

sam = User.create({
    name: "Sam"
})


uncle_bob = Trail.create(name: "Uncle Bob's", difficulty: "Green", has_skiied: false, user: sam)
easy_way = Trail.create(name: "Easy Way", difficulty: "Green", has_skiied: false, user: sam)
sundance = Trail.create(name: "Sundance", difficulty: "Blue", has_skiied: false, user: sam)




