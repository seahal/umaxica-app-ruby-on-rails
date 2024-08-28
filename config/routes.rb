# frozen_string_literal: true

Rails.application.routes.draw do

  # For User
  constraints ->(req) { req.host == ENV["RAILS_USER_URL"] } do
    scope module: :user, as: :user do
      # Health check
      get "status" => "rails/health#show", as: :rails_health_check
      get '/'      => "rails/health#show"
      resource :deactivate, except: :show
    end

    # following namespaces are for USER's Sign sign_in, up, out. Not for Staff's Session
    # namespace :sign do
    #   resources :up # FIXME: scope out this resource
    #   resources :sign_in # FIXME: scope out this resource
    #   resource :out, only: [ :show, :edit, :destroy ]
    # end
    #
    # resource :sign, only: :index do
    #   resources :up, controller: :sign_up # FIXME: scope out this resource
    #   resources :in, controller: :sign_in # FIXME: scope out this resource
    #   resource :out, only: [ :show, :edit, :destroy ], controller: :sign_out
    # end

  end


  # For Staff
  constraints ->(req) { req.host == ENV["RAILS_STAFF_URL"] } do
    scope module: :staff, as: :staff do
      # Health check
      get "status" => "rails/health#show"
      root to: "posts#index"
      resource :deactivate, except: :show
    end
  end
end
