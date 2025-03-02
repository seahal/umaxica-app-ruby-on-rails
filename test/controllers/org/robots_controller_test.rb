require "test_helper"

class Org::RobotsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get org_robot_url
    assert_match "text/plain", response.content_type
    assert_response :success
  end
end
