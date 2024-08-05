# frozen_string_literal: true

class Post < ApplicationRecord
  validates :title, presence: true, uniqueness: true
end
