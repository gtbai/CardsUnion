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

class Consumer < ActiveRecord::Base
  has_one :account, as: :user
  attr_accessible :gender, :nickname
end
