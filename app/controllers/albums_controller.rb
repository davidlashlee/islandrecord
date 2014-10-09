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
		if @album.update(album_params)
			redirect_to @album
		else
			render 'edit'
		end
	end

	def show
		@album = Album.find(params[:id])
	end


	def destroy
		@album = Album.find(params[:id])
		@album.destroy

	redirect_to '/albums', :notice => "Your album has been deleted"
	end

			private
	def album_params
		params.require(:album).permit(:album_name, :song_name, :artist_id)
	end
end
