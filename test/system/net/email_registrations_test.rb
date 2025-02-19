# frozen_string_literal: true

require 'application_system_test_case'

module Net
  class HealthsTest < ApplicationSystemTestCase
    test 'visiting the root of email registration index' do
      visit new_net_registration_email_url
      assert_selector 'h1', text: 'Net::RegistrationEmails#new'
    end
  end
end
