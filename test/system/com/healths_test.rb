# frozen_string_literal: true

require 'application_system_test_case'

module Com
  class HealthsTest < ApplicationSystemTestCase
    test 'visiting the index' do
      visit com_v1_health_url

      assert_selector 'h1', text: 'Com::V1::Healths'
    end
  end
end
