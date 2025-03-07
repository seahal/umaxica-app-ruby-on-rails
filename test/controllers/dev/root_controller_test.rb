require "test_helper"

class Dev::RootControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get dev_root_show_url
    assert_response :success
  end
end
