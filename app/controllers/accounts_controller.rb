# frozen_string_literal: true

class AccountsController < ApplicationController
  def index
    redirect_to "#{ENV['REMIX_URI']}/accounts/new", allow_other_host: true
  end
end
