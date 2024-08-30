class User < ApplicationRecord
  has_many :user_emails, foreign_key: "id"
end
