class ContractsController < ApplicationController

	def index
		@contracts = Contract.all
	end

	def new
		@contract = Contract.new
	end

	def create
		@contract = Contract.new(contracts_params)
		@contract.save
		redirect_to @contract
	end

	def edit
		@contract = Contract.find(params[:id])
	end

	def update
		@contract = Contract.find(params[:id])
		if @contract.update(contract_params)
			redirect_to @contract
		else
			render 'edit'
		end
	end

	def show
		@contract = Contract.find(params[:id])
	end

		private
	def contracts_params
		params.require(:contracts).permit(:name, :length, :artisti_responsibility, :rep_responsibility, :rep_margin, :artist_id)
	end
end