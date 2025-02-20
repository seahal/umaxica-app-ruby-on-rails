# frozen_string_literal: true

class UserSession < AuthRecord
  belongs_to :user
end
