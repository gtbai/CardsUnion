# Load the rails application
require File.expand_path('../application', __FILE__)
::ActiveSupport::Deprecation.silenced = true
# Initialize the rails application
CardsUnion::Application.initialize!
ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    :address => "smtp.163.com",
    :port => 25,
    #:domain => "www.163.com",
    :authentication => :login,
    :user_name => "m15636335259@163.com",
    :password => "hyymlcmwljdqdriv"   
  }

