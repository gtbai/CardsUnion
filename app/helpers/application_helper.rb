module ApplicationHelper
  def current_user
  	@current_user ||= Account.find_by_auth_token(cookies[:auth_token]) if cookies[:auth_token]
  end

  def current_user_type
    current_user.user_type
  end
end