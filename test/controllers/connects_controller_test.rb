# frozen_string_literal: true

require 'test_helper'

class ConnectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @connect = connects(:one)
  end

  # test "should get index" do
  #   get connects_url
  #   assert_response :success
  # end

  # test 'should get new' do
  #   get new_connect_url
  #   assert_response :success
  # end

  # test "should create connect" do
  #   assert_difference("Connect.count") do
  #     post connects_url, params: { connect: { description: @connect.description, title: @connect.title } }
  #   end
  #
  #   assert_redirected_to connect_url(Connect.last)
  # end
  #
  # test "should show connect" do
  #   get connect_url(@connect)
  #   assert_response :success
  # end
  #
  # test "should get edit" do
  #   get edit_connect_url(@connect)
  #   assert_response :success
  # end
  #
  # test "should update connect" do
  #   patch connect_url(@connect), params: { connect: { description: @connect.description, title: @connect.title } }
  #   assert_redirected_to connect_url(@connect)
  # end
  #
  # test "should destroy connect" do
  #   assert_difference("Connect.count", -1) do
  #     delete connect_url(@connect)
  #   end
  #
  #   assert_redirected_to connects_url
  # end
end
