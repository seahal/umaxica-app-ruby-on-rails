# frozen_string_literal: true

raise "[SAFEGUARD] db:seed is only use for dev env." unless Rails.env.development?

StaffEmail.find_or_create_by(address: 'first.staff@example.com')
UserEmail.find_or_create_by(address: 'first.user@example.com')
