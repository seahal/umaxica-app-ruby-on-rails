require "test_helper"

class Dev::Api::NetsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get dev_api_nets_show_url
    assert_response :success
  end
end
