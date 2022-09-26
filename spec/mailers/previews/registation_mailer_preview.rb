# Preview all emails at http://localhost:3000/rails/mailers/registation_mailer
class RegistationMailerPreview < ActionMailer::Preview
  def registation_mail_preview
    RegistationMailer.registation_email(User.first)
  end
end
