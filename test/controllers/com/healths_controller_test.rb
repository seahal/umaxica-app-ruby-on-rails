require "test_helper"

class Com::HealthsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get com_healths_index_url
    assert_response :success
  end
end
