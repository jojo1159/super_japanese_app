# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Tạo Company
User.create!(name: Faker::Name.name, email: 'jojo827755@gmail.com', password: '123456')
10.times { User.create!(name: Faker::Name.name, email: Faker::Internet.email, password: '123456') }
10.times { Course.create!(name: Faker::Name.name, desc: 'This is description of course', user_ids: [1,2]) }
