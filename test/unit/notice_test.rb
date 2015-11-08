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

require 'test_helper'

class NoticeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
