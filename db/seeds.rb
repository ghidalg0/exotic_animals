# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#### clean the database
Animal.destroy_all
User.destroy_all
Booking.destroy_all

#### URL of images
roro = URI.open("https://france3-regions.francetvinfo.fr/image/8OVJlPTX-v3XtoSxQMa-LlKm_8I/930x620//filters:format(webp)/regions/2020/06/09/5edf9fc1091d0_alpaca-4151170_1920-4808572.jpg")
picpic = URI.open("https://media.gerbeaud.net/2020/06/640/paon.jpg")
fifi = URI.open("https://www.imagesdoc.com/wp-content/uploads/sites/33/2018/10/caiman2-fotolia.jpg")
willou = URI.open("https://static5.depositphotos.com/1013653/396/i/600/depositphotos_3969171-stock-photo-young-chimp.jpg")
dede = URI.open("https://jeretiens.net/wp-content/uploads/2018/02/Cerf_biche_cervide.jpg")
ali = URI.open("https://www.larousse.fr/encyclopedie/data/images/1316111-dromadaire.jpg")
richard = URI.open("https://bricoleurs.info/wp-content/uploads/2021/09/Est-ce-que-le-buffle-se-mange.jpg")
martin = URI.open("https://www.mairie-craponne.fr/fileadmin/_processed_/7/1/csm_BP_-_Mission_herisson_9bdadffa58.png")
lancelot = URI.open("https://i.skyrock.net/2404/61082404/pics/3313490386_1_2_Y0SlqRxL.jpg")

#### user and animal creations
user_01 = User.create!([{ email: "guilhem@lewagon.fr", password: "azerty", nickname: "Gigi", first_name: "Guilhem", last_name: "Lewagon", address: "Paris" }])
####
animal_0l01 = Animal.new({ name: "Roro", species: "llama", location: "Thoiry", category: "funny", birthday: Date.new(2019, 12, 03), bio: "I love hugs !", user_id: User.last.id })
animal_0l01.photos.attach(io: roro, filename: "llama")
animal_0l01.save!
####
animal_0l02 = Animal.new({ name: "Ali", species: "camel", location: "Romagne", category: "funny", birthday: Date.new(2019, 12, 03), bio: "I love making jokes !", user_id: User.last.id })
animal_0l02.photos.attach(io: ali, filename: "camel")
animal_0l02.save!

user_02 = User.create!([{ email: "alex@lewagon.fr", password: "azerty", nickname: "Al", first_name: "Alex", last_name: "Lewagon", address: "Paris" }])
animal_0201 = Animal.new({ name: "Picpic", species: "peacock", location: "Lyon", category: "funny", birthday: Date.new(2017, 10, 03), bio: "Hi,i'm Picpic and I love joles !", user_id: User.last.id })
animal_0201.photos.attach(io: picpic, filename: "peacock")
animal_0201.save!
####
animal_0202 = Animal.new({ name: "Martin", species: "hedgehog", location: "Montpellier", category: "capricious", birthday: Date.new(2019, 12, 03), bio: "I want to eat ! NOW !", user_id: User.last.id })
animal_0202.photos.attach(io: martin, filename: "hedgehog")
animal_0202.save!

user_03 = User.create!([{ email: "rayane@lewagon.fr", password: "azerty", nickname: "Rara", first_name: "Rayane", last_name: "Lewagon", address: "Paris" }])
####
animal_0301 = Animal.new({ name: "fifi", species: "crocodile", location: "Mulhouse", category: "grumpy", birthday: Date.new(2020, 12, 03), bio: "I love to sleep !", user_id: User.last.id })
animal_0301.photos.attach(io: fifi, filename: "crocodile")
animal_0301.save!
####
animal_0302 = Animal.new({ name: "Willou", species: "chimpanzee", location: "Paris", category: "funny", birthday: Date.new(2018, 12, 03), bio: "i love women !", user_id: User.last.id })
animal_0302.photos.attach(io: willou, filename: "chimpanzee")
animal_0302.save!
####
animal_0303 = Animal.new({ name: "Richard", species: "buffalo", location: "Amiens", category: "grumpy", birthday: Date.new(2018, 12, 03), bio: "Take care of me if you want me to smile !", user_id: User.last.id })
animal_0303.photos.attach(io: richard, filename: "buffalo")
animal_0303.save!

user_04 = User.create!([{ email: "patrick@lewagon.fr", password: "azerty", nickname: "Pat", first_name: "Patrick", last_name: "Lewagon", address: "Paris" }])
####
animal_0401 = Animal.new({ name: "Dede", species: "reindeer", location: "Montpellier", category: "capricious", birthday: Date.new(2019, 12, 03), bio: "I'm a mannequin", user_id: User.last.id })
animal_0401.photos.attach(io: dede, filename: "reindeer")
animal_0401.save!
####
animal_0402 = Animal.new({ name: "Lancelot", species: "golden rooster", location: "Maubeuge", category: "capricious", birthday: Date.new(2019, 12, 03), bio: "I'm the king !", user_id: User.last.id })
animal_0402.photos.attach(io: lancelot, filename: "golden rooster")
animal_0402.save!
