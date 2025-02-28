# Preview all emails at http://localhost:3000/rails/mailers/net/user_registration_mailer
class Net::UserRegistrationMailerPreview < ActionMailer::Preview
  # Preview this email at http://localhost:3000/rails/mailers/net/user_registration_mailer/welcome
  def welcome
    Net::UserRegistrationMailer.welcome
  end
end
