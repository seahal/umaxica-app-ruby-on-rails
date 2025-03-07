# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :dev do
    get "root/show"
  end
  # Pages for dev pages.
  draw :dev  unless Rails.env.production?
  # for pages which show html
  draw :www
  # api endpoint url
  draw :api
end
