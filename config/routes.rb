# frozen_string_literal: true

Rails.application.routes.draw do
  root 'roots#index'

  # For Health Check
  get 'status' => 'rails/health#show', as: :rails_health_check

  # following namespaces are for USER's Sign in, up, out. Not for Staff's Session
  namespace :sign do
    resources :up # FIXME: scope out this resouce
    resources :in # FIXME: scope out this resouce
    resource :out, only: %i[edit show destroy]
  end
end
