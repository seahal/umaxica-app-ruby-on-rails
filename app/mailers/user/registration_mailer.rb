# frozen_string_literal: true

module User
  class RegistrationMailer < ApplicationMailer
    # Subject can be set in your I18n file at config/locales/en.yml
    # with the following lookup:
    #
    #   en.user.registration_mailer.account_activation.subject
    default from: 'any_from_address@example.com'

    def account_activation
      @greeting = 'Hi'

      mail to: 'to@example.org'
    end

    # Subject can be set in your I18n file at config/locales/en.yml
    # with the following lookup:
    #
    #   en.user.registration_mailer.password_reset.subject
    #
    def password_reset
      @greeting = 'Hi'

      mail to: 'to@example.org'
    end

    def welcome_email
      mail(to: 'm.shiihara@gmail.com', subject: '私の素敵なサイトへようこそ')
    end
  end
end
