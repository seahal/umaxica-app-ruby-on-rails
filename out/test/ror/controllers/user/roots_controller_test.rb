require "test_helper"

class User::RootsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_root_url
    assert_response 200
  end
end
