require "test_helper"

class User::MembershipsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_user_membership_url
    assert_response :success
  end
end
