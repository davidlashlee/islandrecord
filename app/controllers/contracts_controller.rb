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

	def destroy
		@contracts = Contract.find(params[:id])
		@contracts.destroy

	redirect_to '/contracts/new', :notice => "Your contract has been deleted"
	end

		private
<<<<<<< HEAD
	def contracts_params
		params.require(:contract).permit(:name, :length, :artisti_responsibility, :rep_responsibility, :rep_margin, :artist_id)
=======
	def contract_params
		params.require(:contract).permit(:name, :length, :artist_responsibility, :rep_responsibility, :rep_margin, :artist_id)
>>>>>>> fd59359b426b12649f2c1c5941d8d8a40f7ce131
	end
end