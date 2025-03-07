require "test_helper"

class Dev::Www::OrgsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get dev_www_orgs_show_url
    assert_response :success
  end
end
