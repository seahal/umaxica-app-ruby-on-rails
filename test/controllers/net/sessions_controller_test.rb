# frozen_string_literal: true

require 'test_helper'

module Net
  class SessionsControllerTest < ActionDispatch::IntegrationTest
    test 'should get new' do
      get new_net_session_url
      assert_response :success
    end
  end
end
