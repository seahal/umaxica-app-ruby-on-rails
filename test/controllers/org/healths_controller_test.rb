# frozen_string_literal: true

require 'test_helper'

module Org
  class HealthsControllerTest < ActionDispatch::IntegrationTest
    test 'should get show' do
      get org_health_url
      assert_response :success
    end
  end
end
