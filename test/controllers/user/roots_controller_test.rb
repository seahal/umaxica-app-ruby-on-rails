require "test_helper"

class User::RootsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_root_url
    assert_response :success
    assert_select "a[href=?]", user_root_path, count: 0
    assert_select "a[href=?]", new_user_membership_path, count: 0
    assert_select "a[href=?]", new_user_session_path, count: 0
  end
end
