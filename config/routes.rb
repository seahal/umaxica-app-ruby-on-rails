# frozen_string_literal: true

Rails.application.routes.draw do
  # Corporate Page, www.jp.umaxica.com
  draw(:com)
  # Service page, www.jp.umaxica.net
  draw(:net)
  # Staff page, www.jp.umaxica.org
  draw(:org)
  #
  draw :dev unless Rails.env.production?
end
