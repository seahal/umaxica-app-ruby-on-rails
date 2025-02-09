require "test_helper"

class Staff::MembershipsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_staff_membership_url
    assert_response :success
  end
end
