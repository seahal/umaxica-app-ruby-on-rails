# frozen_string_literal: true

module Net
  class RegistrationEmailsController < ApplicationController
    def new
      @user_email = UserEmail.new
    end
  end
end
