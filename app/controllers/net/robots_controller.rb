module Net
  class RobotsController < ApplicationController
    def show
      expires_in 1.hour, public: true # this page wouldn't include private data
      respond_to do |format|
        format.text { render :show }
      end
    end
  end
end
