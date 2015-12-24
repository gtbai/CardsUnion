# == Schema Information
#
# Table name: rates
#
#  id            :integer          not null, primary key
#  rater_id      :integer
#  rateable_id   :integer
#  rateable_type :string(255)
#  stars         :float            not null
#  dimension     :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_rates_on_rateable_id_and_rateable_type  (rateable_id,rateable_type)
#  index_rates_on_rater_id                       (rater_id)
#

class Rate < ActiveRecord::Base
  belongs_to :rater, :class_name => "Consumer"
  belongs_to :rateable, :polymorphic => true
  
  attr_accessible :rate, :dimension
  
end
