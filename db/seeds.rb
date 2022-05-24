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
animal01 = Animal.create!([{ name: "Roro", species: "llama", location: "Perou", category: "funny", birthday: Date.new(2019, 12, 03), bio: "Hi,'im Roro", user_id: User.last.id }])

user02 = User.create!([{ email: "alex@lewagon.fr", password: "azerty", nickname: "Al", first_name: "Alex", last_name: "Lewagon", address: "Paris" }])
animal02 = Animal.create!([{ name: "Picpic", species: "peacock", location: "Cuba", category: "funny", birthday: Date.new(2017, 10, 03), bio: "Hi,'im Poupou", user_id: User.last.id }])

user03 = User.create!([{ email: "rayane@lewagon.fr", password: "azerty", nickname: "Rara", first_name: "Rayane", last_name: "Lewagon", address: "Paris" }])
animal03 = Animal.create!([{ name: "fifi", species: "crocodile", location: "Egypt", category: "funny", birthday: Date.new(2020, 12, 03), bio: "Hi,'im Fifi", user_id: User.last.id }])
animal04 = Animal.create!([{ name: "Wilou", species: "chimpanzee", location: "Paris", category: "funny", birthday: Date.new(2018, 12, 03), bio: "Hi,'im Wilou", user_id: User.last.id }])

user04 = User.create!([{ email: "patrick@lewagon.fr", password: "azerty", nickname: "Pat", first_name: "Patrick", last_name: "Lewagon", address: "Paris" }])
animal05 = Animal.create!([{ name: "Dede", species: "reindeer", location: "Sweden", category: "funny", birthday: Date.new(2019, 12, 03), bio: "Hi,'im Dede", user_id: User.last.id }])
