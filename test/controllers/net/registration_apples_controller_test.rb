# frozen_string_literal: true

require "test_helper"

module Net
  class RegistrationApplesControllerTest < ActionDispatch::IntegrationTest
    test "should get new" do
      get new_net_registration_apple_url
      assert_response :success
      assert_select "a[href=?]", net_root_path, count: 2
    end
  end
end
