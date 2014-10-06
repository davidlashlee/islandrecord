class ToursController < ApplicationController

	def index
		@tours = Tours.all
	end

	def new
		@tour = Tour.new
	end

	def create
		@tour = Tour.new(tour)
		@tour.save
		redirect_to @tour
	end

	def edit
		@tour = Tour.find(params[:id])
	end

	def update
		@tour = Tour.find(params[:id])
		@tour.update(tour)
		redirect_to @tour
	end

	def show
		@tour = Tour.find(params[:id])
	end

end
