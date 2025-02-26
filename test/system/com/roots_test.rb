# frozen_string_literal: true

require "application_system_test_case"

module Com
  class RootsTest < ApplicationSystemTestCase
    test "visiting the index" do
      visit com_root_url
      assert_selector "h1", text: "Com::Roots"
    end
  end
end
