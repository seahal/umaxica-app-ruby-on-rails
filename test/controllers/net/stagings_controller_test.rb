# frozen_string_literal: true

require 'test_helper'

module Net
  class StagingsControllerTest < ActionDispatch::IntegrationTest
    test 'should get show' do
      get net_stagings_show_url
      assert_response :success
    end
  end
end
