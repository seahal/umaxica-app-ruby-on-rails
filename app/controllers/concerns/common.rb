# frozen_string_literal: true

module Common
  extend ActiveSupport::Concern

  # set url params
  def default_url_options
    { lang: I18n.locale, tz: "jst" }
  end

  private
  # generate uuid
  def gen_original_uuid
    SecureRandom.uuid
  end

  # convert utc to local time
  def localize_time(time, zone = "Tokyo")
    time.in_time_zone("Tokyo")
  end
end
