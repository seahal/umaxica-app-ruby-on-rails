# frozen_string_literal: true

require "application_system_test_case"

module Net
  class HealthsTest < ApplicationSystemTestCase
    test "visiting the index" do
      visit net_health_url
      assert_selector "h1", text: "ok"
    end
  end
end
