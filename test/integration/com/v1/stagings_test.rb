# frozen_string_literal: true

require "test_helper"

module Com
  module V1
    class StagingsTest < ActionDispatch::IntegrationTest
      test "should get show" do
        get com_v1_staging_url
        assert_response :success
        json = JSON.parse(response.body)
        assert_equal false, json["staging"]
        assert_equal "", json["id"]
      end
    end
  end
end
