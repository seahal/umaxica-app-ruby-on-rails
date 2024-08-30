# frozen_string_literal: true

class StaffEmail < Email
  has_one :staff, foreign_key: 'id'
end
