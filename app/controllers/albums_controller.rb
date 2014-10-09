class AlbumsController < ApplicationController

def index
		@albums = Album.all
	end

	def new
		@album = Album.new
	end

	def create
		@album = Album.new(album_params)
		@album.save
		redirect_to @album
	end

	def edit
		@album = Album.find(params[:id])
	end

	def update
		@album = Album.find(params[:id])
		@album.update(album)
		redirect_to @albums_path
	end

	def show
		@album = Album.find(params[:id])
	end


	def destroy
		@album = Album.find(params[:id])
		@album.destroy

	redirect_to '/albums/new', :notice => "Your album has been deleted"
	end

			private
	def album_params
		params.require(:album).permit(:album_name, :song_name, :artist_id)
	end
end
