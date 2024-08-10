# frozen_string_literal: true

class Animal < ApplicationRecord
  attribute :full_name, :string, default: ''
  attribute :description, :text, default: '???'
  attribute :extinct, :boolean, default: false

  validates :full_name,
            presence: true,
            uniqueness: { case_sensitive: true },
            length: 1..200
  validates :extinct, inclusion: { in: [true, false] }
end
