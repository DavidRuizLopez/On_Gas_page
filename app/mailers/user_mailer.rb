class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # def path
  #   data = params[:body]
  #   subject=params[:subject]
  #   user = params[:email]
  #   mail_method(data,user,subject).deliver
  # end

  def mail_method(data,email,subject)
    @body=data
    mail(to: email, subject: subject)
  end
end
