require "test_helper"

class Com::StatingControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
end

module Com
  class TermsControllerTest < ActionDispatch::IntegrationTest
    test 'should get show' do
      get com_stating_show_url
      assert_equal "text/plain; charset=utf-8", response.content_type
      assert_response :success
    end
  end
end
