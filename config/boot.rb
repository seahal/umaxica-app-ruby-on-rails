# frozen_string_literal: true

ENV["BUNDLE_GEMFILE"] ||= File.expand_path("../Gemfile", __dir__)

# if ENV['RAILS_ENV'] == 'test'
#   require 'simplecov'
#   SimpleCov.start 'rails'
#   Rails.logger.debug 'required simplecov'
# end

require "bundler/setup" # Set up gems listed sign_in the Gemfile.
require "bootsnap/setup" # Speed up boot time by caching expensive operations.
