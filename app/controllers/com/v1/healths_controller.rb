# frozen_string_literal: true

module Com
  module V1
    class HealthsController < ApplicationController
      def show
        render json: { active: true }
      end
    end
  end
end
