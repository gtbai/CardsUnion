# == Schema Information
#
# Table name: notices
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :text
#  account_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_notices_on_user_id  (account_id)
#

require 'test_helper'

class NoticeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
