# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Animal.destroy_all
User.destroy_all
Booking.destroy_all

user01 = User.create!([{ email: "guilhem@lewagon.fr", password: "azerty", nickname: "Gigi", first_name: "Guilhem", last_name: "Lewagon", address: "Paris" }])

user02 = User.create!([{ email: "alex@lewagon.fr", password: "azerty", nickname: "Al", first_name: "Alex", last_name: "Lewagon", address: "Paris" }])

user03 = User.create!([{ email: "rayane@lewagon.fr", password: "azerty", nickname: "Rara", first_name: "Rayane", last_name: "Lewagon", address: "Paris" }])

user04 = User.create!([{ email: "patrick@lewagon.fr", password: "azerty", nickname: "Pat", first_name: "Patrick", last_name: "Lewagon", address: "Paris" }])
