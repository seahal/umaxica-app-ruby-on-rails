# frozen_string_literal: true

require 'test_helper'

module Com
  class HealthTest < ActionDispatch::IntegrationTest
    test 'the truth' do
      get com_v1_health_url, as: :json
      json = JSON.parse(response.body)
      assert_response :success
      assert json['active']
    end

    test 'should get json show when required html file' do
      get com_v1_health_url, as: :html
      assert_response :success
      assert JSON.parse(response.body)['active']
    end
  end
end
