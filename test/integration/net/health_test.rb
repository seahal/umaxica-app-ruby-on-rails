# frozen_string_literal: true

require 'test_helper'

module Net
  class HealthTest < ActionDispatch::IntegrationTest
    test 'the truth' do
      get net_v1_health_url, as: :json
      json = JSON.parse(response.body)
      assert json['active']
    end

    test 'should get json show when required html file' do
      get net_v1_health_url, as: :html
      assert_response :success
      assert JSON.parse(response.body)['active']
    end
  end
end
