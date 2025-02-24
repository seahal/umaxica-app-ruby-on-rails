# frozen_string_literal: true

require 'test_helper'

module Org
  class StagingsControllerTest < ActionDispatch::IntegrationTest
    test 'should get show' do
      get org_staging_url
      assert_response :success
    end
  end
end
