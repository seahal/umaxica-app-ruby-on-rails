require "test_helper"

class User::HealthsControllerTest < ActionDispatch::IntegrationTest
  test "should get show(html)" do
    get user_healths_show_url
    assert_response :success
  end

  test "should get show(json)" do
    get user_healths_show_url, as: :json
    assert_response :success
    json = JSON.parse(response.body)
    assert_equal "OK", json["status"]
  end
end
