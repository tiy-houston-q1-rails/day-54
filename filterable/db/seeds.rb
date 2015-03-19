# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
#
#rails g scaffold band name origin first_album_year:integer

Band.where(name: "Metallica").first_or_create(first_album_year: 1986, origin: "Indiana")
Band.where(name: "Weezer").first_or_create(first_album_year: 1992, origin: "California")
Band.where(name: "Taylor Swift").first_or_create(first_album_year: 2004, origin: "Nashville")
Band.where(name: "Beatles").first_or_create(first_album_year: 1960, origin: "UK")
Band.where(name: "Radiohead").first_or_create(first_album_year: 1985, origin: "UK")
Band.where(name: "U2").first_or_create(first_album_year: 1976, origin: "UK")
