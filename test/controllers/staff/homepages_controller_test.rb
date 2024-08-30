require "test_helper"

class Staff::HomepagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get staff_root_path

    assert_response :success
    assert_select "a[href=?]", staff_root_path, count: 0
    assert_select "a[href=?]", staff_root_path, count: 0
    assert_select "a[href=?]", staff_root_path, count: 0
  end
end
