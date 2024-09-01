require "test_helper"

class Staff::HealthsControllerTest < ActionDispatch::IntegrationTest
  test "should get show(html)" do
    get staff_health_url
    assert_response :success
  end

  test "should get show(json)" do
    get staff_health_url, as: :json
    assert_response :success
    json = JSON.parse(response.body)
    assert_equal "OK", json["status"]
  end
end
