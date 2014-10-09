class RepsController < ApplicationController

	def index
		@reps = Rep.all
	end

	def new
		@rep = Rep.new
	end

	def create
		@rep = Rep.new(rep_params)
		@rep.save
		redirect_to @rep
	end

	def edit
		@rep = Rep.find(params[:id])
	end

	def update
		@rep = Rep.find(params[:id])
		if @rep.update(rep_params)
			redirect_to reps_path
		else
			render 'edit'
		end
	end

	def show
		@rep = Rep.find(params[:id])
	end

		private
	def rep_params
		params.require(:rep).permit(:first_name,:last_name, :contact_number, :email)
	end
end