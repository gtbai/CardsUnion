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

class Card < ActiveRecord::Base
	validates_presence_of :consumer_id, message: "This phone number is not owned by any 
	exsistent consumer"
	belongs_to :consumer
	belongs_to :merchant
	has_many :fees
 	attr_accessible :balance, :level, :points
end
