# frozen_string_literal: true

Rails.application.routes.draw do
  # Corporate Page, www.jp.example.com
  constraints host: ENV['API_CORPORATE_URL'] do
    scope module: :com, as: :com do
      # only delivery html format
      defaults format: :html do
        # Homepage
        root to: 'roots#index'
        # health check for html
        resource :health, only: :show
        # show latest 'term of use'
        resource :term, only: :show
        # show stating env
        resource :staging, only: :show
      end
      # only delivery json format
      defaults format: :json do
        namespace :v1 do
          resource :health, only: :show
          # show stating env
          resource :staging, only: :show
        end
      end
    end
  end

  # Service page, www.jp.example.net
  constraints host: ENV['API_SERVICE_URL'] do
    scope module: :net, as: :net do
      defaults format: :html do
        root to: 'roots#index'
        resource :health, only: :show # health check for html
        # show latest 'term of use'
        resource :term, only: :show
        # show stating env
        resource :staging, only: :show
        # Sign up pages
        resource :registration, only: :new do
          resource :email, only: %i[new create edit update], controller: 'registration_emails'
          resource :google, only: %i[new create], controller: 'registration_googles'
          resource :apple, only: %i[new create], controller: 'registration_apples'
        end
        # Withdrawal
        resource :withdrawal, only: %i[edit destroy] # TODO: Create or Delete membership
        # Sign In/Out, NEED WEB
        resource :session, only: %i[new destroy] do
          resource :email, only: %i[new create], controller: 'session_emails'
          resource :phone, only: %i[new create], controller: 'session_phones'
          resource :google, only: %i[new create], controller: 'session_googles'
          resource :apple, only: %i[new create], controller: 'session_apples'
        end
      end
      defaults format: :json do
        # Settings
        resource :preference, only: :show
        # For api
        namespace :v1 do
          resource :health, only: :show
          resource :staging, only: :show
        end
      end
    end
  end

  # For Staff's webpages www.jp.example.org
  constraints host: ENV['API_STAFF_URL'] do
    scope module: :org, as: :org do
      defaults format: :html do
        # Homepage
        root to: 'roots#index'
        # health check for html
        resource :health, only: :show
        # show 'term of use'
        resource :term, only: :show
        # show stating env
        resource :staging, only: :show
        # TODO: Owner's lounge
        resource :owner, only: :show
        # Sign up pages
        resource :registration, only: :new do
          resources :emails, only: %i[create edit update], controller: 'registration_emails'
          resources :phones, only: %i[create edit update], controller: 'registration_phones'
        end
        # TODO: Create or Delete membership
        resources :memberships # FIXME: scope out this resource
        # TODO: Login or Logout
        resources :session # FIXME: scope out this resource
      end
      # For api

      defaults format: :json do
        namespace :v1 do
          resource :health, only: :show
          resource :term # edit 'term of use'
          resource :staging, only: :show
        end
      end
    end
  end
end
