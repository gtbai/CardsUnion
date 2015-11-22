# == Schema Information
#
# Table name: cards
#
#  id          :integer          not null, primary key
#  level       :integer          default(1)
#  balance     :decimal(, )
#  points      :integer          default(0)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  merchant_id :integer
#  consumer_id :integer
#

require 'test_helper'

class CardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
