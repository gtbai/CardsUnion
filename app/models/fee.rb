# == Schema Information
#
# Table name: fees
#
#  id         :integer          not null, primary key
#  fee_type   :boolean
#  amount     :decimal(, )
#  card_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Fee < ActiveRecord::Base
  attr_accessible :amount, :fee_type
  belongs_to :card
end
