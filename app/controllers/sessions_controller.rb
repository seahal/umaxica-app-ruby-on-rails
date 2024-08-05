# frozen_string_literal: true

class SessionsController < ApplicationController
  def signin
    redirect_to "#{ENV['REMIX_URI']}/signin", allow_other_host: true
  end
end
