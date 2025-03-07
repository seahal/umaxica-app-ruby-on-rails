require "test_helper"

class Www::Com::RobotsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get www_com_robots_index_url
    assert_response :success
  end
end
