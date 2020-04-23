# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
users = [{id: 1, username: "rukmani", password_digest: "rukmani@gmail.com",email: "rukmani@gmail.com"}, {id:2,username: "test", password_digest: "test123",email: "test@gmail.com"}]
users.each { |user| User.create user }
Assignment.delete_all
assignments = [{id:1,name: "c++", user_id: 1, type_id: 1},{id:2,name: "Rails", user_id: 1, type_id: 1},{id:3,name: "Diet", user_id: 2, type_id: 3}]
assignments.each { |assignment| Assignment.create assignment }
Type.delete_all
types = [{id: 1, categoryName: "Programming"}, {id: 2, categoryName: "Law"}, {id: 3, categoryName: "General"}, {id: 4,categoryName: "Others"}]
types.each{ |type| Type.create type}
