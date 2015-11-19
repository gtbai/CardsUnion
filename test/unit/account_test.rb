# == Schema Information
#
# Table name: accounts
#
#  id                     :integer          not null, primary key
#  email                  :string(255)
#  phone                  :string(255)
#  password_digest        :string(255)
#  user_type              :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  auth_token             :string(255)
#  user_id                :integer
#  password_reset_token   :string(255)
#  password_reset_sent_at :datetime
#

require 'test_helper'

class AccountTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
