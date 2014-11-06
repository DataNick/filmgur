class FilmsController < ApplicationController

	def index 
		@films = Film.all # @films are instances of all objects of film class?

	
	end
	
	def show
		@film = Film.find(params[:id]) # is @film an instance of a specific instance of film class?
	
		# @film = @films[params[:id].to_i]
	end

	def new
		@film = Film.new
	end

	def create
		@film = Film.new(film_params)
		if @film.save
			redirect_to films_url
		else
			render :new
		end
		# render :text => "Saving a picture. URL: #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"

	end

	def edit
		@film = Film.find(params[:id])
	end

	def update
		@film = Film.find(params[:id])

		if @film.update_attributes(film_params)
			redirect_to "/films/#{@film.id}"
		else
			render :edit
		end
	end

	def destroy
		@film = Film.find(params[:id])
		@film.destroy
		redirect_to pictures_url
	end

	private
	def film_params
		params.require(:film).permit(:artist, :title, :url)
	end


end
