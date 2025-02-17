# frozen_string_literal: true

require 'test_helper'

module Org
  module V1
    class HealthsControllerTest < ActionDispatch::IntegrationTest
      test 'should get show' do
        get org_v1_health_url
        assert_response :success
      end
    end
  end
end
