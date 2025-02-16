# frozen_string_literal: true

class ApplicationController < ActionController::Base
  # Change User's or Staff's Root Template.
  allow_browser versions: :modern

  # Change User's and Staff's Root Template.
  layout ->() {
    case request.host
    when ENV["API_CORPORATE_URL"]
      "com/application"
    when ENV["API_SERVICE_URL"]
      "user/application"
    when ENV["API_STAFF_URL"]
      "staff/application"
    else
      raise
    end
  }
end
