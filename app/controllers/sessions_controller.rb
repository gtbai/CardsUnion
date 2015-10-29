class SessionsController < ApplicationController
	def new
	end

	def create
		@user = User.find_by_email(params[:session][:email])
		# if @user && @user.authenticate(params[:session][:password]) && @user.user_type == params[:session][:user_type]
		# 	session[:user_id] = @user.id
		# 	redirect_to '/'
		# else
		# 	redirect_to '/login'
		# end

		if @user
			if  @user.authenticate(params[:session][:password])
				if @user.user_type == params[:session][:user_type]
					session[:user_id] = @user.id
					redirect_to '/'
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
		session[:user_id] = nil
		redirect_to '/'
	end
end
