require "test_helper"

class User::RegistrationEmailsControllerTest < ActionDispatch::IntegrationTest
  # test "should get new registration with email path" do
  #   get new_user_registration_email_url
  #   assert_response :success
  # end

  # test "valid signup information ?" do
  #   get new_user_registration_email_path
  #   assert_difference "UserEmail.count" do
  #     post user_registration_emails_url, params: { user_email: { 'address': "sample@example.com" } }
  #   end
  #   assert_redirected_to user_registration_email_path(UserEmail.last)
  #   assert_response :redirect
  # end

  test "same user_email is invalid, but no failure" do
    UserEmail.create(address: "sample@example.com")
    get new_user_registration_path
    assert_no_difference "UserEmail.count" do
      post user_registration_emails_url, params: { user_email: { 'address': "sample@example.com" } }
    end
    assert_response :redirect
  end

  test "blank at address field is invalid, and errors count should be 2" do
    get new_user_registration_path
    assert_no_difference "UserEmail.count" do
      post user_registration_emails_url, params: { user_email: { 'address': "" } }
    end
    assert_select "div>ul>li", { count: 2 }
    assert_response 422
  end
end
