# frozen_string_literal: true

json.extract! animal, :id, :full_name, :description, :extinct, :created_at, :updated_at
json.url animal_url(animal, format: :json)
