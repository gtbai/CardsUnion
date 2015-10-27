class SessionsController < ApplicationController
	def new
	end

	def create
		@user = User.find_by_email(params[:session][:email])
		if @user && @user.authenticate(params[:session][:password]) && @user.user_type==params[:session][:user_type]
			session[:user_id] = @user.id
			redirect_to '/'
		else
			redirect_to 'login'
		end
	end
end
