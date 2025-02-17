# frozen_string_literal: true

module Org
  module V1
    class HealthsController < ApplicationController
      def show
        render json: { active: true }
      end
    end
  end
end
