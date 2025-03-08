require "test_helper"

class Api::Org::RobotsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_org_robots_index_url
    assert_response :success
  end
end
