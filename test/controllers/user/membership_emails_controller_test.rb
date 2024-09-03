require "test_helper"

class User::MembershipEmailsControllerTest < ActionDispatch::IntegrationTest
  test "should get new registration with email path" do
    get new_user_registration_email_url
    assert_response :success
  end
end
