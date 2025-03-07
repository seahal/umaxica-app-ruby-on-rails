
module Dev
  class RootsController < ApplicationController
    def index
      # This screen is not displayed in the production environment.
      redirect_to "https://umaxica.com", allow_other_host: true unless Rails.env.development?
    end
  end
end