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

song1 = Song.create(name: "I can get no satisfaction", artist: artist1 )
song2 = Song.create(name: "Ne me quitte pas", artist: artist2 )
song3 = Song.create(name: "Kiss", artist: artist3)
song4 = Song.create(name: "Purple rain", artist: artist3 )

photo1 = Photo.create(remote_image_url:"http://res.cloudinary.com/annedien/image/upload/v1477140016/SongDB/1411_dlrwws.jpg", artist: artist1 )
photo2 = Photo.create(remote_image_url:"http://res.cloudinary.com/annedien/image/upload/v1477140072/SongDB/4360_elryv4.jpg", artist: artist2 )
photo3 = Photo.create(remote_image_url:"http://res.cloudinary.com/annedien/image/upload/v1477140123/SongDB/635968409323456227-XXX-PRINCE-CONCERT-49017356_o6zsg3.jpg", artist: artist3 )