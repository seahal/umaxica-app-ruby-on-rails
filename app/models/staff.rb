class Staff < ApplicationRecord
  has_many :staff_emails, foreign_key: "id"
end
