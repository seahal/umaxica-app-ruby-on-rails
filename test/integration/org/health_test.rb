# frozen_string_literal: true

require 'test_helper'

module Org
  class HealthTest < ActionDispatch::IntegrationTest
    test 'the truth' do
      get org_v1_health_url
      json = JSON.parse(response.body)
      assert json['active']
      assert_response :success
    end

    test 'should get json show when required html file' do
      get org_v1_health_url, as: :html
      assert_response :success
      assert JSON.parse(response.body)['active']
    end
  end
end
