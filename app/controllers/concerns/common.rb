# frozen_string_literal: true

module Common
  extend ActiveSupport::Concern

  def gen_original_uuid
    SecureRandom.uuid
  end
end
