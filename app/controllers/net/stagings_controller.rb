# frozen_string_literal: true

module Net
  class StagingsController < ApplicationController
    def show
      if ENV['STAGING'].blank? && Rails.env.production?
        raise ActionController::RoutingError, 'Page not found when run on production'
      end

      @git_hash = ENV.fetch 'STAGING', '???'
    end
  end
end
