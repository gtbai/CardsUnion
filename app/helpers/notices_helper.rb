module NoticesHelper
  def created_by_current_user(notice)
  	if current_user
    	notice.account_id == current_user.id
    else 
    	false
    end
  end
end
