# frozen_string_literal: true

require "test_helper"

class ActivityTest < ActiveSupport::TestCase
  test "checking redis cache liveness" do
    r = Redis.new(url: File.exist?("/.dockerenv") ? ENV["REDIS_CACHE_URL"] : "redis://localhost:6379/0")
    assert_equal r.ping, "PONG"
  end

  test "checking redis session liveness" do
    r = Redis.new(url: File.exist?("/.dockerenv") ? ENV["REDIS_SESSION_URL"] : "redis://localhost:6380/0")
    assert_equal r.ping, "PONG"
  end

  test "checking PostgreSQL(AUTH, Pub) liveness" do
    r = Redis.new(url: File.exist?("/.dockerenv") ? ENV["REDIS_CACHE_URL"] : "redis://localhost:6379/0")
    assert_equal r.ping, "PONG"
  end
end
