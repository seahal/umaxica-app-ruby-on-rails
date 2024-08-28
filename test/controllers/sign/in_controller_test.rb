# frozen_string_literal: true

require 'test_helper'

module Sign
  class InControllerTest < ActionDispatch::IntegrationTest
    test "new sign up page" do
      get '/sign/up/new'
      assert_response :success
      assert_select "input[name=?]", 'user_email[email]', { count: 1 }
      assert_select "input[type=submit]", { count: 1 }
      assert_select 'a[href=?]', new_sign_in_path, count: 1
    end
  end
end
