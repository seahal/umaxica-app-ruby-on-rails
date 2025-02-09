require "test_helper"

class User::SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new user session" do
    get new_user_session_url
    assert_response :success
  end
end
