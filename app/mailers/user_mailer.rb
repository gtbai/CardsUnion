class UserMailer < ActionMailer::Base
  default from: "m15636335259@163.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_reset.subject
  #
  def password_reset(account)
    @account = account
    mail :to => account.email, :subject => "Password Reset"
  end
  def notice_information(account)
    @account = account
    mail :to => account.email, :subject => "Your Favorite Shop Has Something New!"
  end
end
