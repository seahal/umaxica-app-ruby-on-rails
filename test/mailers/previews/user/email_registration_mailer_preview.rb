# Preview all emails at http://localhost:3000/rails/mailers/user/email_registration_mailer
class User::EmailRegistrationMailerPreview < ActionMailer::Preview
  # Preview this email at http://localhost:3000/rails/mailers/user/email_registration_mailer/account_activation
  def account_activation
    User::EmailRegistrationMailer.account_activation
  end

  # Preview this email at http://localhost:3000/rails/mailers/user/email_registration_mailer/password_reset
  def password_reset
    User::EmailRegistrationMailer.password_reset
  end
end
