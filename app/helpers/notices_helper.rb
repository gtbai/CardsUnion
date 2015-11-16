module NoticesHelper
  def created_by_current_user(notice)
  	if current_user
    	notice.user_id == current_user.id
    else 
    	false
    end
  end
end
