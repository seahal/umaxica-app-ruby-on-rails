# frozen_string_literal: true

Rails.application.routes.draw do
  root "roots#index"

  # For Health Check
  get "status" => "rails/health#show", as: :rails_health_check

  # following namespaces are for USER's Sign sign_in, up, out. Not for Staff's Session
  # namespace :sign do
  #   resources :up # FIXME: scope out this resource
  #   resources :sign_in # FIXME: scope out this resource
  #   resource :out, only: [ :show, :edit, :destroy ]
  # end
  #
  resource :sign, only: :index do
    resources :up, controller: :sign_up # FIXME: scope out this resource
    resources :in, controller: :sign_in # FIXME: scope out this resource
    resource :out, only: [ :show, :edit, :destroy ], controller: :sign_out
  end

  # You would confuse this naming, but it is natural to think about user's action.
  resource :deactivate, except: :show
end
