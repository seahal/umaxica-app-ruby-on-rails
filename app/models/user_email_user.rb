class UserEmailUser < ApplicationRecord
  belongs_to :user_email
  belongs_to :user
end
