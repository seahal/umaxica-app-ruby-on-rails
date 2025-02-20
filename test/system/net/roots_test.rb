# frozen_string_literal: true

require 'application_system_test_case'

module Net
  class RootsTest < ApplicationSystemTestCase
    test 'visiting the index' do
      visit net_root_url
      assert_selector 'h1', text: 'Net::Roots'
    end
  end
end
