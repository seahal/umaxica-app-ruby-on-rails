class Staff < ApplicationRecord
  has_many :emails, foreign_key: "address"
end
