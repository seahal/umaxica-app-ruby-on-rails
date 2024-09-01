require "test_helper"

class Staff::SessionControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get staff_session_new_url
    assert_response :success
  end
end
