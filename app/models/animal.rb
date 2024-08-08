# frozen_string_literal: true

class Animal < ApplicationRecord
  validates :full_name,
            presence: true,
            uniqueness: { case_sensitive: true },
            length: 1..200
  validates :extinct, inclusion: { in: [true, false] }
end
