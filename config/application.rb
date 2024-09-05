# frozen_string_literal: true

require_relative "boot"

require "rails/all"

# Require the gems listed sign_in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

if Rails.env.development? || Rails.env.test?
  require "dotenv"

  if File.exist?("/.dockerenv")
    Dotenv.load ".env" # <= when you are sign_in docker
  else
    Dotenv.load ".env.local" # <= when you are sign_in mac, linux, and so on.
  end
end

module Learn
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.2

    # Please, add to the `ignore` list any other `lib` subdirectories that do
    # not contain `.rb` files, or that should not be reloaded or eager loaded.
    # Common ones are `templates`, `generators`, or `middleware`, for example.
    config.autoload_lib(ignore: %w[assets tasks])

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden sign_in specific environments using the files
    # sign_in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    config.generators do |generate|
      generate.orm :active_record, primary_key_type: :uuid
    end
  end
end
