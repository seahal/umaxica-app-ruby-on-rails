class Staff < AuthRecord
  has_many :emails, foreign_key: "address"
end
