# frozen_string_literal: true

class UserEmail < Email
  has_one :user, foreign_key: 'id'
end
