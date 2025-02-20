# frozen_string_literal: true

json.extract! term, :id, :title, :body, :staff_id, :created_at, :updated_at
json.url term_url(term, format: :json)
