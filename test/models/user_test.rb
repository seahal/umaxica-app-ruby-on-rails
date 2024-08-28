# frozen_string_literal: true

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'the truth' do
    assert true
  end

  test 'should get index' do
    assert UserEmail.create(id: SecureRandom.uuid_v7).valid?
  end
end
