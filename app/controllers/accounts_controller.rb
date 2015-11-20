class AccountsController < ApplicationController
	def new
		@account = Account.new
	end
	def create
		@account = Account.new(account_params)
		if @account.save
			cookies[:auth_token] = @account.auth_token
			redirect_to '/'
		else
			render 'new'
		end
	end
	private
	def account_params
		params.require(:account).permit(:email, :phone, :password, :password_confirmation, :user_type, :protocol)
	end


end