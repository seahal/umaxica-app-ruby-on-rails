# frozen_string_literal: true

require "test_helper"

class ActivityTest < ActiveSupport::TestCase
  test "checking Redis cache liveness" do
    r = Redis.new(url: File.exist?("/.dockerenv") ? ENV["REDIS_CACHE_URL"] : "redis://localhost:6380/0")
    assert_equal r.ping, "PONG"
  end

  test "checking Redis session liveness" do
    r = Redis.new(url: File.exist?("/.dockerenv") ? ENV["REDIS_SESSION_URL"] : "redis://localhost:6380/0")
    assert_equal r.ping, "PONG"
  end

  test "checking PostgreSQL(AUTH, Pub) liveness" do
    ActiveRecord::Base.connected_to(role: :writing) do
      assert User.last
    end
  end

  test "checking PostgreSQL(AUTH, Sub) liveness" do
    ActiveRecord::Base.connected_to(role: :reading, prevent_writes: true) do
      assert User.last
    end
  end
end
