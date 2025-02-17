# frozen_string_literal: true

class ApplicationController < ActionController::Base
  # Change User's or Staff's Root Template.
  allow_browser versions: :modern

  # Change User's and Staff's Root Template.
  layout lambda {
    case request.host
    when ENV['API_CORPORATE_URL']
      'com/application'
    when ENV['API_STAFF_URL']
      'org/application'
    when ENV['API_SERVICE_URL']
      'net/application'
    else
      raise
    end
  }
end
