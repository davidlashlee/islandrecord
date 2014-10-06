class ContractsController < ApplicationController

	def index
		@contracts = Contracts.all
	end

	def new
		@contract = Contract.new
	end

	def create
		@contract = Contract.new(contract)
		@contract.save
		redirect_to @contract
	end

	def edit
		@contract = Contract.find(params[:id])
	end

	def update
		@contract = Contract.find(params[:id])
		@contract.update(contract)
		redirect_to @contract
	end

	def show
		@contract = Contract.find(params[:id])
	end

end