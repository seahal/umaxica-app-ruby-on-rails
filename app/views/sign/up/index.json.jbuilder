# frozen_string_literal: true

json.array! @samples, partial: "samples/sample", as: :user_email
