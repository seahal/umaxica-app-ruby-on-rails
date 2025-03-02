require "test_helper"

class Com::RobotsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get com_robot_url
    assert_response :success
  end
end
