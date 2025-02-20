# frozen_string_literal: true

module Net
  class ApplicationController < ActionController::Base
    allow_browser versions: :modern
  end
end
