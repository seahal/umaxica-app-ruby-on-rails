require "test_helper"

class Dev::Api::OrgsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get dev_api_orgs_show_url
    assert_response :success
  end
end
