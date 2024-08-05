# frozen_string_literal: true

json.extract! connect, :id, :title, :description, :created_at, :updated_at
json.url connect_url(connect, format: :json)
