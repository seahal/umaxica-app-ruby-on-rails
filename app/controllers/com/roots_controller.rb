# frozen_string_literal: true

module Com
  class RootsController < ApplicationController
    def index
      # This screen is not displayed in the production environment.
      redirect_to "google.com" if Rails.env.production? # FIXME: redirect needs operation
    end
  end
end
