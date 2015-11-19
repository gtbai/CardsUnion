# == Schema Information
#
# Table name: merchants
#
#  id           :integer          not null, primary key
#  store_name   :string(255)
#  store_type   :string(255)
#  introduction :text
#  address      :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  store_image  :string(255)
#

require 'test_helper'

class MerchantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
