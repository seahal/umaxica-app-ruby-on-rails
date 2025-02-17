# frozen_string_literal: true

class UserRegistrationByEmailMailer < ApplicationMailer
  default from: 'notifications@umaxica.com'

  def account_activation
    mail(to: 'm.shiihara@gmail.com', subject: 'Password Reset')
  end

  def password_reset
    mail(to: 'm.shiihara@gmail.com', subject: 'Password Reset')
  end
end
