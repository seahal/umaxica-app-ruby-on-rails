require "test_helper"

class Api::Com::V1::HealthControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get api_com_v1_health_show_url
    assert_response :success
  end
end
