# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  phone           :string(255)
#  password_digest :string(255)
#  user_type       :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  auth_token      :string(255)
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
