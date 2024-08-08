# frozen_string_literal: true

require 'test_helper'

class AnimalTest < ActiveSupport::TestCase
  def setup
    @animal = Animal.new
  end

  test 'seijyoukei' do
    @animal = Animal.new(full_name: 'sapience', description: 'this description would be written by human beings.',
                         extinct: false)
    assert @animal.valid?
  end

  test 'the truth' do
    assert_not @animal.save
  end

  test 'length of name is shorter than 201' do
    @animal.full_name = 'a' * 201
    assert_not @animal.valid?
    @animal.full_name = 'a' * 200
    assert @animal.valid?
  end

  test 'length of name is larger than 0' do
    @animal.full_name = 'a' * 0
    assert_not @animal.valid?
    @animal.full_name = 'a' * 1
    assert @animal.valid?
  end

  test 'name needs value' do
    @animal.full_name = nil
    assert_not @animal.valid?
    @animal.full_name = ''
    assert_not @animal.valid?
  end
end
