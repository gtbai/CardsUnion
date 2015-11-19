# == Schema Information
#
# Table name: accounts
#
#  id                     :integer          not null, primary key
#  email                  :string(255)
#  phone                  :string(255)
#  password_digest        :string(255)
#  user_type              :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  auth_token             :string(255)
#  user_id                :integer
#  password_reset_token   :string(255)
#  password_reset_sent_at :datetime
#

class Account < ActiveRecord::Base
  has_many :notices
  belongs_to :user, polymorphic: true
  attr_accessible :email, :phone, :password, :password_confirmation, :user_type, :auth_token, :user_id
  has_secure_password
  validates_presence_of :email, :message => "must be provided so we can send you emails"
  #validates_uniqueness_of :email, :message => "has been registered, please directly log in"
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :message => "does not look like a proper email address"
  validates_each :phone do |record, attr, value| record.errors.add(attr, 'does not seem in normal length') if value.length != 7 and value.length != 11
  end

  validates :phone, :numericality => {:only_integer => true, :message => "does not look like a proper phone number"}
  validates_presence_of :password, :message => "must be provided so validate your identy"
  validates_length_of :password, :in => 6..24
  validates_format_of :password, :with => /[0-9]/, :message => "must contain at least one number"
  validates_format_of :password, :with => /[a-zA-Z]/, :message => "must contain at least one character"
  validates :password, :confirmation => true
  validates :password_confirmation, :presence => true
  before_create {generate_token(:auth_token)}
 # validates_confirmation_of :password, :message => "does not match confirmation"

  def merchant?
    self.user_type == 'Merchant'
  end

  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while Account.exists?(column => self[column])
  end
  def send_password_reset
    generate_token(:password_reset_token)
    self.password_reset_sent_at = Time.zone.now
    save!(:validate => false)
    UserMailer.password_reset(self).deliver
  end
end
