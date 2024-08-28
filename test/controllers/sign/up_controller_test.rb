# frozen_string_literal: true

require "test_helper"

module Sign
  class UpControllerTest < ActionDispatch::IntegrationTest
    test "should get new user page" do
      get sign_up_index_url
      assert_response :success
    end

    test "new sign up page" do
      get "/sign/up/new"
      assert_response :success
      assert_select "input[name=?]", "user_email[address]", { count: 1 }
      assert_select "input[type=submit]", { count: 1 }
      assert_select "a[href=?]", new_sign_in_path, count: 1
    end

    test "valid email post" do
      get new_sign_in_path
      assert_difference "Email.count", 1 do
        post sign_up_index_path, params: { user_email: { address: "sample@example.org" } }
      end
    end

    test "invalid email post" do
      get new_sign_in_path
      assert_no_difference "Email.count" do
        post sign_up_index_path, params: { user_email: { address: "???" } }
      end
    end
  end
end
