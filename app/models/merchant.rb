# == Schema Information
#
# Table name: merchants
#
#  id           :integer          not null, primary key
#  store_name   :string(255)
#  store_type   :string(255)
#  introduction :text
#  address      :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Merchant < ActiveRecord::Base
  attr_accessible :address, :introduction, :store_name, :store_type
  has_one :account, as: :user
end
