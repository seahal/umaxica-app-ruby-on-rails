require "test_helper"

class Dev::ApisControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get dev_apis_show_url
    assert_response :success
  end
end
