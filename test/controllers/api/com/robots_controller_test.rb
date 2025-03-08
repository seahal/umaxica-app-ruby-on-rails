require "test_helper"

class Api::Com::RobotsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_com_robot_index_url
    assert_response :success
  end
end
