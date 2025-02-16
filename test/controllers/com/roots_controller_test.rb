require "test_helper"

class Com::RootsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get com_roots_index_url
    assert_response :success
  end
end
