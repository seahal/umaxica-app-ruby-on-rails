require "test_helper"

class User::PreferencesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get user_preference_url
    assert_response :success
  end
end
