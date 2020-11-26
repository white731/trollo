# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# create 3 users with 1 board each with 3 lists each and between 1..5 tasks per board
require 'faker'


# i = 0
# 3.times do |i|
# i+1
# u = User.create(email:"test#{i}@test.com", password:"123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
#     b = u.boards.create(title:Faker::Job.field)
#         3.times do
#         l = b.lists.create(title: Faker::Color.color_name)
#         end
#             rand(1..5).times do 
#             t = l.tasks.create(title:Faker::Food.dish, description:Faker::Food.description)
#             end
# end

u = User.create(email:"test3@test.com", password:"123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
    b = u.boards.create(title:Faker::Job.field)
     
        l1 = b.lists.create(title: Faker::Color.color_name)
        l2 = b.lists.create(title: Faker::Color.color_name)
        l3 = b.lists.create(title: Faker::Color.color_name)
    
        
            l1.tasks.create(title:Faker::Food.dish, description:Faker::Food.description)
            l1.tasks.create(title:Faker::Food.dish, description:Faker::Food.description)
            l1.tasks.create(title:Faker::Food.dish, description:Faker::Food.description)
            l1.tasks.create(title:Faker::Food.dish, description:Faker::Food.description)

            l2.tasks.create(title:Faker::Food.dish, description:Faker::Food.description)
            l2.tasks.create(title:Faker::Food.dish, description:Faker::Food.description)
            l2.tasks.create(title:Faker::Food.dish, description:Faker::Food.description)
            l2.tasks.create(title:Faker::Food.dish, description:Faker::Food.description)

            l3.tasks.create(title:Faker::Food.dish, description:Faker::Food.description)
            l3.tasks.create(title:Faker::Food.dish, description:Faker::Food.description)
            l3.tasks.create(title:Faker::Food.dish, description:Faker::Food.description)
            l3.tasks.create(title:Faker::Food.dish, description:Faker::Food.description)
        