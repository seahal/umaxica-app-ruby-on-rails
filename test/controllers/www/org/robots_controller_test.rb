require "test_helper"

class Www::Org::RobotsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get www_org_robots_index_url
    assert_response :success
  end
end
