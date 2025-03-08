# frozen_string_literal: true

module Www
  module Com
    module V1
      class StagingsController < ApplicationController
        include ::V1::Staging
      end
    end
  end
end
