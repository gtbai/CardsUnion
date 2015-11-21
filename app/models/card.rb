# == Schema Information
#
# Table name: cards
#
#  id          :integer          not null, primary key
#  level       :integer
#  balance     :decimal(, )
#  points      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  merchant_id :integer
#  consumer_id :integer
#

class Card < ActiveRecord::Base
	belongs_to :consumer
	belongs_to :merchant
 	attr_accessible :balance, :level, :points
end
