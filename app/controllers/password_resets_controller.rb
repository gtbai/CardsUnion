class PasswordResetsController < ApplicationController
  def new
  end
  def create
	  account = Account.find_by_email(params[:email])
	  account.send_password_reset if account
	  redirect_to root_url, :notice => "Email sent with password reset instructions."
  end
  def edit
  @account = Account.find_by_password_reset_token!(params[:id])
  end
  def update
  @account = Account.find_by_password_reset_token!(params[:id])
  if @account.password_reset_sent_at < 2.hours.ago
    redirect_to new_password_reset_path, :alert => "Password &crarr; 
      reset has expired."
  elsif @account.update_attributes(params[:account])
    redirect_to root_url, :notice => "Password has been reset."
  else
    render :edit
  end
end
end
