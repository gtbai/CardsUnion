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
  acts_as_follower
  acts_as_followable
  has_one :account, as: :user, :dependent => :destroy
  has_many :cards
  has_many :merchants, :through => :cards
  attr_accessible :gender, :nickname
  letsrate_rater
end
