class RepsController < ApplicationController

	def index
		@reps = Reps.all
	end

	def new
		@rep = Rep.new
	end

	def create
		@rep = Rep.new(rep)
		@rep.save
		redirect_to @rep
	end

	def edit
		@rep = Rep.find(params[:id])
	end

	def update
		@rep = Rep.find(params[:id])
		@rep.update(rep)
		redirect_to @rep
	end

	def show
		@rep = Rep.find(params[:id])
	end
end