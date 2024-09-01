require "test_helper"

class Staff::HealthsControllerTest < ActionDispatch::IntegrationTest
  test "should get show(json)" do
    get staff_healths_show_url, as: :json
    assert_response :success
  end

  test "should get show(html)" do
    get staff_healths_show_url
    assert_response :success
  end
end
