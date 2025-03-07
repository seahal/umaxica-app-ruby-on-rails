# frozen_string_literal: true

require "test_helper"

module Com
  module V1
    class HealthsControllerTest < ActionDispatch::IntegrationTest
      test "should get show" do
        get com_v1_health_url
        assert_response :success
      end
    end
  end
end
