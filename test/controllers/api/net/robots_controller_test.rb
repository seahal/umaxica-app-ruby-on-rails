require "test_helper"

class Api::Net::RobotsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_net_robots_index_url
    assert_response :success
  end
end
