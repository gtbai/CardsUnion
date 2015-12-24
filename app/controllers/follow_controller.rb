class FollowController < ApplicationController
  def index
    if current_user.user_type == "Merchant"
     	 @followers = current_user.followers
    else
      @followers = current_user.all_follows
    end
  end
  def edit
    if current_user.user_type == "Consumer"
     	@m = Merchant.find(params[:format]).account
        current_user.follow(@m)
    end
    redirect_to Merchant.find(params[:format])
  end
end
