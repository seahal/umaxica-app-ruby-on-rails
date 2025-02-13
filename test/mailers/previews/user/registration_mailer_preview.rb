# Preview all emails at http://localhost:3000/rails/mailers/user/registration_mailer
class User::RegistrationMailerPreview < ActionMailer::Preview
  # Preview this email at http://localhost:3000/rails/mailers/user/registration_mailer/account_activation
  def account_activation
    User::RegistrationMailer.account_activation
  end

  # Preview this email at http://localhost:3000/rails/mailers/user/registration_mailer/password_reset
  def password_reset
    User::RegistrationMailer.password_reset
  end
end
