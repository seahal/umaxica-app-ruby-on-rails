require "test_helper"

class StaffEmailStaffTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "email staff relation" do
    assert StaffEmail.create(address: "one@example.com").valid?
  end
end
