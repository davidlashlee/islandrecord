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
		@rep.update(rep)
		redirect_to @reps_path
	end

	def show
		@rep = Rep.find(params[:id])
	end

	def destroy
		@reps = Rep.find(params[:id])
		@reps.destroy

	redirect_to '/reps/new', :notice => "Your rep has been deleted"
	end

		private
	def rep_params
		params.require(:rep).permit(:first_name,:last_name, :contact_number, :email)
	end
end