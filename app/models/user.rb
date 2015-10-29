class User < ActiveRecord::Base
  attr_accessible :email, :phone, :password, :password_confirmation, :user_type
  has_secure_password
  has_many :notices
  validates_presence_of :email, :message => "must be provided so we can send you emails"
  validates_uniqueness_of :email, :message => "has been registered, please directly log in"
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :message => "does not look like a proper email address"
  validates_presence_of :password, :message => "must be provided so validate your identy"
  validates_length_of :password, :in => 6..24
  validates_format_of :password, :with => /[0-9]/, :message => "must contain at least one number"
  validates_format_of :password, :with => /[a-zA-Z]/, :message => "must contain at least one character"
  before_create {generate_token(:auth_token)}
 # validates_confirmation_of :password, :message => "does not match confirmation"

  def merchant?
    self.user_type == 'merchant'
  end

  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end

end
