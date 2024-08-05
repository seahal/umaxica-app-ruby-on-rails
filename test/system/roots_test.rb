# frozen_string_literal: true

require 'application_system_test_case'

class RootsTest < ApplicationSystemTestCase
  setup do
  end

  test 'should watch homepage' do
    visit '/'
    assert_text 'Roots'
  end

  # test 'should update Book' do
  #   visit book_url(@book)
  #   click_on 'Edit this book', match: :first
  #
  #   fill_in 'Body', with: @book.body
  #   fill_in 'Title', with: @book.title
  #   click_on 'Update Book'
  #
  #   assert_text 'Book was successfully updated'
  #   click_on 'Back'
  # end
  #
  # test 'should destroy Book' do
  #   visit book_url(@book)
  #   click_on 'Destroy this book', match: :first
  #
  #   assert_text 'Book was successfully destroyed'
  # end
end
