# == Schema Information
#
# Table name: messages
#
#  id          :integer          not null, primary key
#  content     :text
#  consumer_id :integer
#  merchant_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_messages_on_consumer_id  (consumer_id)
#  index_messages_on_merchant_id  (merchant_id)
#

class Message < ActiveRecord::Base
  belongs_to :consumer
  belongs_to :merchant
  attr_accessible :content
end
