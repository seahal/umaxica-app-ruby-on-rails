# frozen_string_literal: true

require "application_system_test_case"

class RootsTest < ApplicationSystemTestCase
  setup do
  end

  test "should watch staff's homepage" do
    visit staff_root_url
    assert_title /^umaxica$/i
    assert_element "h1"
  end
end
