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
		@contract.update(contract)
		redirect_to @contracts_path
	end

	def show
		@contract = Contract.find(params[:id])
	end

	def destroy
		@contracts = Contract.find(params[:id])
		@contracts.destroy

	redirect_to '/contracts/new', :notice => "Your contract has been deleted"
	end

		private
	def contracts_params
		params.require(:contract).permit(:name, :length, :artisti_responsibility, :rep_responsibility, :rep_margin, :artist_id)
	end
end