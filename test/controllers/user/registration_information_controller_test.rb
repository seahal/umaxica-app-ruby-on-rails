require "test_helper"

class User::RegistrationInformationControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get user_registration_information_show_url
    assert_response :success
  end
end
