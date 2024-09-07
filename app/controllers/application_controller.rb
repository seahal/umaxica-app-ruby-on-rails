# frozen_string_literal: true

class ApplicationController < ActionController::Base
  # Change User's or Staff's Root Template.
  allow_browser versions: :modern

  # Change User's or Staff's Root Template.
  layout ->(controller) { request.host == ENV["RAILS_USER_URL"] ? "user/application" : "staff/application" }
end
