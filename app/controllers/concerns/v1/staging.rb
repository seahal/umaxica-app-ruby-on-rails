# frozen_string_literal: true

module V1
  module Staging
    extend ActiveSupport::Concern

    def show
      expires_in 1.second, public: true # this page wouldn't include private data

      if ENV['STAGING'].blank? && Rails.env.production?
        render status: 500, json: { staging: true }
      else
        render status: 200, json: { staging: false, id: '???' }
      end
    end
  end
end