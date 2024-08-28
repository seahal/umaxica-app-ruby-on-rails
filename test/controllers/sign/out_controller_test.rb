require "test_helper"

class Sign::OutControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get sign_out_edit_url
    assert_response :success
  end

  test "should get show" do
    get sign_out_show_url
    assert_response :success
  end

  test "should get destroy" do
    get sign_out_destroy_url
    assert_response :success
  end
end
