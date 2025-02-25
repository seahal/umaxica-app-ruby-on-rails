# frozen_string_literal: true

module Com
  class ApplicationController < ActionController::Base
    include ::Common

    allow_browser versions: :modern
  end
end
