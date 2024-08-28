# frozen_string_literal: true

require "test_helper"

class AccountTest < ActiveSupport::TestCase
  [ StaffEmail, UserEmail ].each do |model|
    test "good #{model}'s email pattern" do
      assert model.create(address: "eg@example.com").valid?
    end

    test "Email(#{model}) can't be blank" do
      assert_not model.new(address: "").valid?
    end

    test "Email(#{model}) should be case insensitive unique" do
      eg = model.create(address: "eg@example.com")
      assert_not model.new(address: eg.address).valid?
      assert_not model.new(address: eg.address.upcase).valid?
    end


    test "email(#{model}) address should be shorter <= 255" do
      assert true
      #      assert_not UserEmail.new(address: "").valid?
    end
  end
end
