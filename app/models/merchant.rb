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
#  store_image  :string(255)
#

class Merchant < ActiveRecord::Base
  attr_accessible :address, :introduction, :store_name, :store_type, :store_image, :store_image_cache, :remove_store_image, :remote_store_image_url
  has_one :account, as: :user
  validates_presence_of :store_name, :message => 'must be provided so we can identify your store.'
  validates_presence_of :store_type, :message => 'must be provided so we can filter notices posted by a certain type of stores.'
  validates_presence_of :introduction, :message => 'must be provided so customers get to know you.'
  validates_presence_of :address, :message => 'must be provided so customers know where your store locates.'
  mount_uploader :store_image, StoreImageUploader
end
