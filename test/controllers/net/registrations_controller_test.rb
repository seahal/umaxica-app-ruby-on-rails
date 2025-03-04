require "test_helper"

class Net::RegistrationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_net_registration_url
    assert_response :success
  end
end
