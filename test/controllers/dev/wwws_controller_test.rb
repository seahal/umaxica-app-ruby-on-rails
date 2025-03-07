require "test_helper"

class Dev::WwwsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get dev_wwws_show_url
    assert_response :success
  end
end
