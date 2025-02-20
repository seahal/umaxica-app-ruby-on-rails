# frozen_string_literal: true

# Load the Rails application.
require_relative 'application'

# E-mail SaaS Preferences (Twilio SendGrid)
ActionMailer::Base.smtp_settings = {
  user_name: 'apikey', # This is the string literal 'apikey', NOT the ID of your API key
  password: ENV['SENDGRID_PASSWORD'], # This is the secret sendgrid API key which was issued during API key creation
  domain: ENV['SENDGRID_DOMAIN'],
  address: ENV['SENDGRID_ADDRESS'],
  port: 587,
  authentication: :plain,
  enable_starttls_auto: true
}

# Initialize the Rails application.
Rails.application.initialize!
