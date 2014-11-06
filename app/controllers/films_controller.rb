class FilmsController < ApplicationController

	def index 
		@films = Film.all # @films are instances of all objects of film class?
		# 	{
		# 	   :title  => "Chungking Express",
		# 	   :artist => "Wong Kar-Wai",
		# 	   :url    => "http://www.craigskinnerfilm.com/wp-content/uploads/2012/02/Chungking-Express-GIF.gif"
		# 	},
		# 	{
		# 	   :title  => "North by Northwest",
		# 	   :artist => "Alfred Hitchcock",
		# 	   :url    => "http://images5.fanpop.com/image/photos/31600000/North-By-Northwest-Gif-Image-north-by-northwest-31644733-500-272.gif"
		# 	},
		# 	{
		# 	   :title  => "The Big Lebowski",
		# 	   :artist => "The Coen Brothers",
		# 	   :url    => "http://media3.giphy.com/media/x4vMKWXxkSA9i/giphy.gif"
		# 	}
		# ]

	
	end
	
	def show
		@film = Film.find(params[:id]) # is @film an instance of a specific instance of film class?
		# 	{
		# 		:title  => "Chungking Express",
		# 		:artist => "Wong Kar-Wai",
		# 		:url    => "http://www.craigskinnerfilm.com/wp-content/uploads/2012/02/Chungking-Express-GIF.gif"
		# 	},
		# 	{
		# 		:title  => "North by Northwest",
		# 		:artist => "Alfred Hitchcock",
		# 		:url    => "http://images5.fanpop.com/image/photos/31600000/North-By-Northwest-Gif-Image-north-by-northwest-31644733-500-272.gif"
		# 	},
		# 	{
		# 		:title  => "The Big Lebowski",
		# 		:artist => "The Coen Brothers",
		# 		:url    => "http://media3.giphy.com/media/x4vMKWXxkSA9i/giphy.gif"
		# 	}
		# ]
		# @film = @films[params[:id].to_i]
	end

	def new
		
	end

	def create
		render :text => "Saving a picture. URL: #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"
	end


end
