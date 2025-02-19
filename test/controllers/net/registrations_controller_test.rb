# frozen_string_literal: true

require 'test_helper'

module Net
  class RegistrationsControllerTest < ActionDispatch::IntegrationTest
    test 'should get new' do
      get new_net_registration_url
      assert_response :success
      assert_select 'a[href=?]', new_net_registration_email_path
      assert_select 'a[href=?]', new_net_registration_apple_path
      assert_select 'a[href=?]', new_net_registration_google_path
      assert_select 'a[href=?]', net_root_path, count: 2
    end
  end
end
