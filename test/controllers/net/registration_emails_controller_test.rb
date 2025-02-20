# frozen_string_literal: true

require 'test_helper'

module Net
  class RegistrationEmailsControllerTest < ActionDispatch::IntegrationTest
    test 'should get new' do
      get new_net_registration_email_url
      assert_response :success

      assert_select 'a[href=?]', net_root_path, count: 2
    end

    test 'should show link for sign in pages' do
      get new_net_registration_email_url
      assert_select 'a[href=?]', new_net_session_path, count: 1
    end

    test 'DOM validation' do
      get new_net_registration_email_url
      assert_select 'input#user_email_address'
      assert_select 'input#user_email_confirm_policy'
    end
  end
end
