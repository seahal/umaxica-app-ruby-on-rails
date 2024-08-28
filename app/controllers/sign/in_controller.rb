# frozen_string_literal: true

module Sign
  class InController < ApplicationController
    def new
      render html: "now creating"
    end
  end
end
