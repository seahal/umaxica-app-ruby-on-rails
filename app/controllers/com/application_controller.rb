# frozen_string_literal: true

module Com
  class ApplicationController < ActionController::Base
    include ::Common

    allow_browser versions: :modern

    def default_url_options
      { lang: I18n.locale, tz: 'jst' }
    end
  end
end
