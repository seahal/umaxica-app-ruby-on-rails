require "test_helper"

class Com::ContactsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get com_contacts_new_url
    assert_response :success
  end
end
