# frozen_string_literal: true

require 'test_helper'

module Net
  class HealthTest < ActionDispatch::IntegrationTest
    test "the truth" do
      get net_v1_health_url
      json = JSON.parse(response.body)
      assert json['active']
    end
  end
end
