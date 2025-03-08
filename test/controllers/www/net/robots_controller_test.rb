require "test_helper"

class Www::Net::RobotsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get www_net_robots_index_url
    assert_response :success
  end
end
