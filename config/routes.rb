# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :com do
    get "healths/index"
    get "roots/index"
  end
  # Corporate Page, www.jp.example.com
  constraints host: ENV["API_CORPORATE_URL"] do
    scope module: :com, as: :com do
      root to: "roots#index"
      resource :health, only: :show
    end
  end


  # Service page, www.jp.example.net
  constraints host: "#{ENV['API_SERVICE_URL']}" do
    scope module: :user, as: :user do
      root to: "roots#index"
      # TODO: add Health check routing for ???.com
      resource :health, only: :show
      # Sign up pages
      resource :registration, only: :new do
        resources :emails, only: [ :create, :edit, :update ], controller: "registration_emails"
        resources :phones, only: [ :create, :edit, :update ], controller: "registration_phones"
        resource :google, only: [ :new, :create ], controller: "registration_googles"
        resource :apple, only: [ :new, :create ], controller: "registration_apples"
        resource :information, only: [ :new, :create, :show ], controller: "registration_information"
      end
      # Withdrawal
      resource :withdrawal, only: [ :edit, :destroy ] # TODO: Create or Delete membership
      # Sign In/Out, NEED WEB
      resource :session, only: [ :new, :destroy ] do
        resource :email, only: [ :new, :create ], controller: "session_emails"
        resource :phone, only: [ :new, :create ], controller: "session_phones"
        resource :google, only: [ :new, :create ], controller: "session_googles"
        resource :apple, only: [ :new, :create ], controller: "session_apples"
      end
      # Settings
      resource :preference, only: :show
    end
  end

  # For Staff's webpages www.jp.example.org
  constraints host: ENV["API_STAFF_URL"] do
    scope module: :staff, as: :staff do
      # Homepage
      root to: "roots#index"
      # TODO: add Health check routing for ???.com
      resource :health, only: :show
      # TODO: Owner's lounge
      resource :owner, only: :show
      # TODO: Create or Delete membership
      resources :memberships # FIXME: scope out this resource
      # TODO: Login or Logout
      resources :session # FIXME: scope out this resource
    end
  end
end
