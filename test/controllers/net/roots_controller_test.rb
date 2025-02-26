# frozen_string_literal: true

require "test_helper"

module Net
  class RootsControllerTest < ActionDispatch::IntegrationTest
    test "should get index" do
      get net_root_url
      assert_response :success
      assert_select "a[href=?]", net_root_path, count: 2
    end
  end
end
