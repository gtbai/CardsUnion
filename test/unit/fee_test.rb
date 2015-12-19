# == Schema Information
#
# Table name: fees
#
#  id              :integer          not null, primary key
#  fee_type        :boolean
#  original_amount :decimal(, )
#  card_id         :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  discount        :decimal(, )
#

require 'test_helper'

class FeeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
