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

class Fee < ActiveRecord::Base
  attr_accessible :original_amount, :fee_type
  belongs_to :card
end
