require "test_helper"

class Staff::OwnersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get staff_owner_url
    assert_response :success
  end
end
