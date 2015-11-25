class ApplicationController < ActionController::Base
  protect_from_forgery
  def current_user
  	@current_user ||= Account.find_by_auth_token(cookies[:auth_token]) if cookies[:auth_token]
  end

  def require_user
    if current_user == nil
   	  redirect_to '/login', :notice => "PLease login"
    end 
  end 

  def require_merchant
    if current_user.merchant? == false
  	 redirect_to :root, :notice => "Only merchant can do this!"
    end 
  end

    def own_card?(card)
    if (current_user.user_type == "merchant") && (current_user.user.id != card.merchant_id)
      render 'index', notice: "This card does not belong to your store!"
    end
    if (current_user.user_type == "consumer") && (current_user.user.id != card.consumer.id)
      render 'index', notice: "This card does not belong to you!"
    end
  end
end