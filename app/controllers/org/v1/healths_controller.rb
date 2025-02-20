# frozen_string_literal: true

module Org
  module V1
    class HealthsController < ApplicationController
      include ::Common

      def show
        expires_in 1.second, public: true # this page wouldn't include private data
        if system_ok?
          render status: 200, json: { active: true }
        else
          render status: 500, json: { active: false }
        end
      end
    end
  end
end
