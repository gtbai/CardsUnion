class SessionsController < ApplicationController
	def new
	end

	def create
		@account = Account.find_by_email(params[:session][:email])
		if @account
			if  @account.authenticate(params[:session][:password])
				if @account.user_type == params[:session][:user_type]
					if params[:session][:remember_me] == '1'
						cookies.permanent[:auth_token] = @account.auth_token
					else
						cookies[:auth_token] = @account.auth_token
					end
					redirect_to '/'
					return
				else
					flash[:usertype_error] = "The account type is unmatched, please try again."
				end
			else
				flash[:password_error] = "The password is incorrect, please try again." 
			end
		else
			flash[:email_error] = "This Email has never been regitered, please try again." 
		end
		redirect_to '/login' unless session[:user_id]
	end

	def destroy
		#session[:user_id] = nil
		cookies.delete(:auth_token)
		redirect_to '/'
	end
end
