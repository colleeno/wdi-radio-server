# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Song.destroy_all

Song.create(artist: "Norah Jones" , title: "Come Away With Me", album: "Come Away With Me")
Song.create(artist: "Adele", title: "Hello", album: "25")
Song.create(artist: "Kesha", title: "Praying", album: "Rainbow")
Song.create(artist: "Beyonce", title: "All night", album: "Lemonade")
Song.create(artist: "Taylor Swift", title: "Clean", album: "1989")
