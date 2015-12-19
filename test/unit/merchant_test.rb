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
#  level_1      :integer          default(100)
#  level_2      :integer          default(200)
#  discount_1   :decimal(, )      default(0.95)
#  discount_2   :decimal(, )      default(0.9)
#  discount_3   :decimal(, )      default(0.85)
#

require 'test_helper'

class MerchantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
