# frozen_string_literal: true

module Com
  module V1
    class HealthsController < ApplicationController
      include ::V1::Health
    end
  end
end
