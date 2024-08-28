# frozen_string_literal: true

require 'test_helper'

module Sign
  class UpControllerTest < ActionDispatch::IntegrationTest
    # test 'should get index ' do
    #   get sign_up_index_url
    #   assert_response :success
    # end

    test 'should get index' do
      UserEmail.create(id: SecureRandom.uuid_v7)
      get sign_up_index_url
      assert_response :success
    end
  end
end
