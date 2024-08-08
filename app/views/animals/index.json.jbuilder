# frozen_string_literal: true

json.array! @animals, partial: 'animals/animal', as: :animal
