module ApplicationHelper
  def current_user
  	@current_user ||= User.find_by_auth_token( cookies[:auth_token]) if cookies[:auth_token]
  end
end