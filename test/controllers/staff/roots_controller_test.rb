require "test_helper"

class Staff::RootsControllerTest < ActionDispatch::IntegrationTest
  setup do
  end

  test "should get index" do
    get staff_root_url
    assert_response :success
    assert_select "a[href=?]", staff_root_path, count: 0
    assert_select "a[href=?]", new_staff_membership_path, count: 1
    assert_select "a[href=?]", new_staff_session_path, count: 1
  end
end
