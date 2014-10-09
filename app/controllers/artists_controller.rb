class ArtistsController < ApplicationController

	def index
		@artists = Artist.all
	end

	def new
		@artist = Artist.new
	end

	def create
		@artist = Artist.new(artist_params)
		@artist.save
		redirect_to @artist
	end

	def edit
		@artist = Artist.find(params[:id])
	end

	def update
		@artist = Artist.find(params[:id])
		if @artist.update(artist_params)
			redirect_to @artist
		else
			render 'edit'
		end
	end

	def show
		@artist = Artist.find(params[:id])
	end

	def destroy
		@artist = Artist.find(params[:id])
		@artist.destroy

	redirect_to '/artists', :notice => "Your artists has been deleted"
	end

			private
	def artist_params
		params.require(:artist).permit(:first_name,:last_name, :rep_id)
	end

end