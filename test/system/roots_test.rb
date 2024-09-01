# frozen_string_literal: true

require "application_system_test_case"

class RootsTest < ApplicationSystemTestCase
  setup do
  end

  test "should watch homepage" do
    visit staff_root_url
    assert_text "Roots"
  end
end
