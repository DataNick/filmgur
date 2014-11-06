# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Film.create!(
	:title  => "Chungking Express",
	:artist => "Wong Kar-Wai",
	:url    => "http://www.craigskinnerfilm.com/wp-content/uploads/2012/02/Chungking-Express-GIF.gif"
)

Film.create!(
  :title  => "North by Northwest",
  :artist => "Alfred Hitchcock",
  :url    => "http://images5.fanpop.com/image/photos/31600000/North-By-Northwest-Gif-Image-north-by-northwest-31644733-500-272.gif"
)

Film.create!(
  :title  => "The Big Lebowski",
  :artist => "The Coen Brothers",
  :url    => "http://media3.giphy.com/media/x4vMKWXxkSA9i/giphy.gif"
)
