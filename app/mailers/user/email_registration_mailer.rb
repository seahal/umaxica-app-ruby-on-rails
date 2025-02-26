# frozen_string_literal: true

module User
  class EmailRegistrationMailer < ApplicationMailer
    # Subject can be set in your I18n file at config/locales/en.yml
    # with the following lookup:
    #
    #   en.user.email_registration_mailer.account_activation.subject
    #
    def account_activation
      @greeting = "Hi"

      mail to: "m.shiihara@gmail.com", subject: "Account activation"
    end

    # Subject can be set in your I18n file at config/locales/en.yml
    # with the following lookup:
    #
    #   en.user.email_registration_mailer.password_reset.subject
    #
    def password_reset
      @greeting = "Hi"

      mail to: "to@example.org"
    end
  end
end
