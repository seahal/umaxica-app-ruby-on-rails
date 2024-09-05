require "test_helper"

class User::RegistrationControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_user_registration_url
    assert_response :success
  end
end
