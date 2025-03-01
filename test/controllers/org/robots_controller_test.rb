require "test_helper"

class Org::RobotsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get org_robot_url
    assert_response :success
  end
end
