require "test_helper"

class Com::ContactsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get com_contacts_new_url
    assert_response :success
  end

  # test "should create term" do
  #     assert_difference("Term.count") do
  #       post terms_url, params: { term: { body: @term.body, staff_id: @term.staff_id, title: @term.title } }
  #     end
  #
  #     assert_redirected_to term_url(Term.last)
  # end
  #
  #   test "should show term" do
  #     get term_url(@term)
  #     assert_response :success
  #   end
end
