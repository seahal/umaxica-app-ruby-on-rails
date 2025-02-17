# frozen_string_literal: true

module Net
  module V1
    class HealthsController < ApplicationController
      def show
        render json: { active: true }
      end
    end
  end
end
