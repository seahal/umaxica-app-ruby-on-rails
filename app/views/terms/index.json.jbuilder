# frozen_string_literal: true

json.array! @terms, partial: 'terms/term', as: :term
