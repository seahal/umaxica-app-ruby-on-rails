# frozen_string_literal: true

module Org
  class RootsController < ApplicationController
    def index
      # This screen is not displayed in the production environment.
      redirect_to "google.com" if Rails.env.production?
    end
  end
end
