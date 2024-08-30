class Staff < ApplicationRecord
  has_many :emails, foreign_key: "id"
end
