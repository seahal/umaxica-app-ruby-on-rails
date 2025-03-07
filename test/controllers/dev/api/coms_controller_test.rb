require "test_helper"

class Dev::Api::ComsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get dev_api_coms_show_url
    assert_response :success
  end
end
