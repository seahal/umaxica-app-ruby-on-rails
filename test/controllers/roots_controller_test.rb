# frozen_string_literal: true

require 'test_helper'

class RootsControllerTest < ActionDispatch::IntegrationTest
  def new_sign_1n_path
    # code here
  end

  test 'should get index' do
    get root_url
    assert_response :success

    assert_select 'a[href=?]', root_path, count: 1
    assert_select 'a[href=?]', new_sign_up_path, count: 1
    assert_select 'a[href=?]', new_sign_in_path, count: 1
  end
end
