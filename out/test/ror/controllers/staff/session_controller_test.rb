require "test_helper"

class Staff::SessionControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_staff_session_url
    assert_response :success
  end
end
