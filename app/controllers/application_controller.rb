class ApplicationController < ActionController::Base
  protect_from_forgery
  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def require_user
   	redirect_to '/login' unless current_user
  end 

  def require_merchant
  	redirect_to '/' unless current_user.merchant?
  end
end