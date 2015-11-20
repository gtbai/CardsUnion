# == Schema Information
#
# Table name: notices
#
#  id           :integer          not null, primary key
#  title        :string(255)
#  content      :text
#  account_id   :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  notice_image :string(255)
#
# Indexes
#
#  index_notices_on_user_id  (account_id)
#

class Notice < ActiveRecord::Base
  include ApplicationHelper
  attr_accessible :notice_image, :notice_image_cache, :remote_store_image_url, :remove_notice_image
  belongs_to :account
  attr_accessible :content, :title
  mount_uploader :notice_image, NoticeImageUploader
end
