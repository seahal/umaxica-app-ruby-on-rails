# frozen_string_literal: true

require 'test_helper'

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :chrome, screen_size: [1400, 1400], options: {
    browser: :remote,
    url: 'http://selenium:4444'
  }
  Capybara.server_host = ENV.fetch('HOSTNAME')
end
