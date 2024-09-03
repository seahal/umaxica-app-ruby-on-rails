require "test_helper"

class User::MembershipPhonesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get new_user_registration_phone_url
    assert_response :success
  end
end
