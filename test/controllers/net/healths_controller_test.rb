# frozen_string_literal: true

require 'test_helper'

module Net
  class HealthsControllerTest < ActionDispatch::IntegrationTest
    test 'should get show' do
      get net_health_url
      assert_response :success
    end
  end
end
