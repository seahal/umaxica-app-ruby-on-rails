# frozen_string_literal: true

StaffEmail.find_or_create_by(address: 'first.staff@example.com')
UserEmail.find_or_create_by(address: 'first.user@example.com')
