# frozen_string_literal: true

require 'test_helper'

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  if File.exist?('/.dockerenv')
    driven_by :selenium, using: :chrome, screen_size: [1400, 1400], options: {
      browser: :remote,
      url: ENV['SELENIUM_URL']
    }
    Capybara.server_host = ENV.fetch('HOSTNAME')
  end
end
