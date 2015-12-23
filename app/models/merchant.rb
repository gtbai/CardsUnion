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
#  level_1      :integer          default(100)
#  level_2      :integer          default(200)
#  discount_1   :decimal(, )      default(0.95)
#  discount_2   :decimal(, )      default(0.9)
#  discount_3   :decimal(, )      default(0.85)
#

class Merchant < ActiveRecord::Base
  acts_as_follower
  acts_as_followable
  attr_accessible :address, :introduction, :store_name, :store_type, :store_image, :store_image_cache, :remove_store_image, :remote_store_image_url, :level_1, :level_2, :discount_1, :discount_2, :discount_3
  has_one :account, as: :user
  has_many :cards
  has_many :consumers, :through => :cards
  validates_presence_of :store_name, :message => 'must be provided so we can identify your store.'
  validates_presence_of :store_type, :message => 'must be provided so we can filter notices posted by a certain type of stores.'
  validates_presence_of :introduction, :message => 'must be provided so customers get to know you.'
  validates_presence_of :address, :message => 'must be provided so customers know where your store locates.'
  mount_uploader :store_image, StoreImageUploader

  has_many :messages
end
