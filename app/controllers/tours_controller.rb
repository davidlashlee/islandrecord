class ToursController < ApplicationController

	def index
		@tours = Tours.all
	end

	def new
		@tour = Tour.new
	end

	def create
		@tour = Tour.new(tour_params)
		@tour.save
		redirect_to @tour
	end

	def edit
		@tour = Tour.find(params[:id])
	end

	def update
		@tour = Tour.find(params[:id])
		@tour.update(tour)
		redirect_to @tours_path
	end

	def show
		@tour = Tour.find(params[:id])
	end

	private
	def tour_params
		params.require(:tour).permit(:date_time,:location, :artist_id)
	end

end
