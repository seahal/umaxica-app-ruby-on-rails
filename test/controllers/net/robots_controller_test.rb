require "test_helper"

class Net::RobotsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get net_robot_url
    assert_response :success
  end
end
