# frozen_string_literal: true

require 'application_system_test_case'

module Net
  class HealthsTest < ApplicationSystemTestCase
    test 'visiting the index' do
      visit net_v1_health_url

      assert_selector 'h1', text: 'Net::V1::Healths'
    end
  end
end
