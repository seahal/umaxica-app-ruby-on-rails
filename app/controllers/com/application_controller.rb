# frozen_string_literal: true

module Com
  class ApplicationController < ActionController::Base
    include ::Common

    allow_browser versions: :modern


    public
    def localize_time(time, zone = "Tokyo")
      time.in_time_zone("Tokyo")
    end
  end
end
