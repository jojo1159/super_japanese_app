class RegistationMailer < ApplicationMailer
  default from: "jojo827755@gmail.com"

  def registation_email user
    @user = user
    mail to: @user.email, subject: "Sample Email"
  end
end
