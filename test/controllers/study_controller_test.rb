# frozen_string_literal: true

require 'test_helper'

class StudyControllerTest < ActionDispatch::IntegrationTest
  test 'should get hello_importmap' do
    get study_hello_importmap_url
    assert_response :success
  end
end
