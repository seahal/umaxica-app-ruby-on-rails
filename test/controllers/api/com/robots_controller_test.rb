require "test_helper"

class Api::Com::RobotsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_com_robots_index_url
    assert_response :success
  end
end
