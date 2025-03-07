require "test_helper"

class Dev::Www::NetsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get dev_www_nets_show_url
    assert_response :success
  end
end
