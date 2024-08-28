# frozen_string_literal: true

class Email < ApplicationRecord
  validates :address, presence: true,
                      length: { maximum: 255 },
                      format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                      uniqueness: { case_sensitive: false }
end
