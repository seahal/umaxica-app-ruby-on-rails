# frozen_string_literal: true

module Com
  module V1
    class StagingsController < ApplicationController
      def show
        expires_in 1.second, public: true # this page wouldn't include private data
        if ENV['STAGING'].blank? && Rails.env.production?
          render status: 500, json: { staging: true }
        else
          render status: 200, json: { staging: false }
        end
      end
    end
  end
end
