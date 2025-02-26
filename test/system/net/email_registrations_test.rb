# frozen_string_literal: true

require "application_system_test_case"

module Net
  class HealthsTest < ApplicationSystemTestCase
    test "visiting the root of email registration index" do
      visit new_net_registration_email_url
      assert_selector "h1", text: "Net::RegistrationEmails#new"
    end

    test "fill and actions" do
      visit new_net_registration_email_url
      assert_selector "h1", text: "Net::RegistrationEmails#new"

      fill_in "user_email[address]", with: "one@two.three"
      click_on "Create User email"
    end
  end
end
