# == Schema Information
#
# Table name: notices
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_notices_on_user_id  (user_id)
#

class Notice < ActiveRecord::Base
  include ApplicationHelper
  belongs_to :account
  attr_accessible :content, :title
end
