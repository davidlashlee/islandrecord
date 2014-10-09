class ToursController < ApplicationController

	def index
		@tours = Tour.all
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

		if @tour.update(tour_params)
			redirect_to @tour
		else
			render 'edit'
		end
	end

	def show
		@tour = Tour.find(params[:id])
	end

	def destroy
		@tours = Tour.find(params[:id])
		@tours.destroy

	redirect_to '/tours', :notice => "Your tour has been deleted"
	end

	private
	def tour_params
		params.require(:tour).permit(:date_time,:location, :artist_id)
	end

end
