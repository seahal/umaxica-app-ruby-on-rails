# frozen_string_literal: true

class Phone < AuthRecord
  self.primary_key = :number

  has_one :user, foreign_key: 'id'
  has_one :staff, foreign_key: 'id'
end
