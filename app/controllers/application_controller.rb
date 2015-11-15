class ApplicationController < ActionController::Base
  protect_from_forgery
  def current_user
  	@current_user ||= Account.find_by_auth_token(cookies[:auth_token]) if cookies[:auth_token]
  end

  def require_user
   	redirect_to '/login' unless current_user
  end 

  def require_merchant
  	redirect_to '/' unless current_user.merchant?
  end
end