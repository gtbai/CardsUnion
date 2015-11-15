# == Schema Information
#
# Table name: consumers
#
#  id         :integer          not null, primary key
#  nickname   :string(255)
#  gender     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ConsumerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
