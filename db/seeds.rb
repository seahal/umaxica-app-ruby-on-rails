# frozen_string_literal: true

raise "[SAFEGUARD] db:seed only use for dev env." unless Rails.env.development?

staff = Staff.find_or_create_by!(id: '0191a0b6-1304-7c43-8248-0f13b4d29c57')
user = User.find_or_create_by!(id: '0191a0b6-1304-7c43-8248-0f13b4d29c59')
staff_email = StaffEmail.find_or_create_by!(address: 'first.staff@example.com')
user_email = UserEmail.find_or_create_by!(address: 'first.user@example.com')
staff_email.staff = staff
user_email.user = user
staff_email.save!
user_email.save!
