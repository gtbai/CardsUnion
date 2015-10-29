class SessionsController < ApplicationController
	def new
	end

	def create
		@user = User.find_by_email(params[:session][:email])
		if @user
			if  @user.authenticate(params[:session][:password])
				if @user.user_type == params[:session][:user_type]
					#session[:user_id] = @user.id
					if params[:session][:remember_me] == "1"
						cookies.permanent[:auth_token] = @user.auth_token
					else
						cookies[:auth_token] = @user.auth_token
					end
					redirect_to '/'
					return
				else
					flash[:usertype_error] = "The user type is unmatched, please try again." 
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
