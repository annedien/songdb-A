# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Photo.delete_all
Song.delete_all
Artist.delete_all

artist1 = Artist.create(name: "Rolling Stones")
artist2 = Artist.create(name: "Jaques Brel")
artist3 = Artist.create(name: "Prince")

song1 = Song.create ( name: "I can get no satisfaction", artist: "Rolling Stones" )
song2 = Song.create ( name: "Ne me quitte pas", artist:"Jaques Brel"   )
song3 = Song.create  ( name: "Kiss", artist: "Prince")
song4 = Song.create  ( name: "Purple rain", artist: "Prince" )

