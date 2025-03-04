# frozen_string_literal: true

Rails.application.routes.draw do
  # Corporate Page, www.jp.umaxica.com
  constraints host: ENV["API_CORPORATE_URL"] do
    scope module: :com, as: :com do
      # Homepage
      root to: "roots#index"
      resource :health, only: :show      # health check for html
      resource :term, only: :show # show latest 'term of use'
      # show stating env
      resource :staging, only: :show
      # show search pages
      resource :search, only: :show
      # non-loggined settings
      resource :privacy, only: [ :show, :edit ]
      # ROBOTS
      get "/robots.txt", to: "robots#show", as: :robot, format: :text
      # api
      namespace :v1 do
        resource :health, only: :show
        # show stating env
        resource :staging, only: :show
      end
    end
  end

  # Service page, www.jp.umaxica.net
  constraints host: ENV["API_SERVICE_URL"] do
    scope module: :net, as: :net do
        root to: "roots#index"
        resource :health, only: :show # health check for html
        # show latest 'term of use'
        resource :term, only: :show
        # show stating env
        resource :staging, only: :show
        # non-loggined settings
        resource :privacy, only: [ :show, :edit ]
        # Sign up pages
        resource :registration, only: :new
        namespace :registration do
          resource :email, only: %i[new create edit update]
          resource :telephone, only: %i[new create edit update]
          resource :google, only: %i[new create]
          resource :apple, only: %i[new create]
        end
        # Withdrawal
        resource :withdrawal, only: %i[edit destroy] # TODO: Create or Delete membership
        # Sign In/Out, NEED WEB
        resource :session, only: %i[new destroy]
        # todo: rewrite namespace
        namespace :session do
          resource :email, only: %i[new create]
          resource :google, only: %i[new create]
          resource :apple, only: %i[new create]
          resource :passkey, only: %i[new create]
          resource :password, only: %i[new create]
        end

      # Settings
      resource :preference, only: :show
      # For api
      namespace :v1 do
        resource :health, only: :show
        resource :staging, only: :show
        #
        namespace :beacon do
          resources :emails, only: %i[show]
        end
      end
      get "/robots.txt", to: "robots#show", as: :robot, format: :text
    end
  end

  # For Staff's webpages www.jp.example.org
  constraints host: ENV["API_STAFF_URL"] do
    scope module: :org, as: :org do
        # Homepage
        root to: "roots#index"
        # health check for html
        resource :health, only: :show
        # show 'term of use'
        resource :term, only: :show
        # show stating env
        resource :staging, only: :show
        # non-loggined settings
        resource :privacy, only: [ :show, :edit ]
        # TODO: Owner's lounge
        resource :owner, only: :show
        # Sign up pages
        # todo: rewrite namespace
        resource :registration, only: :new
        namespace :registration do
          resources :emails, only: %i[create edit update]
        end
        # TODO: Create or Delete membership
        namespace :membership do
        end
        # TODO: Login or Logout
        resource :session, only: :new
        namespace :session do
          resource :email, only: %i[new create]
        end

        # For api
        namespace :v1 do
          resource :health, only: :show
          resource :term # edit 'term of use'
          resource :staging, only: :show
          #
          namespace :beacon do
            resources :emails, only: %i[show]
          end
        end
      #
      get "/robots.txt", to: "robots#show", as: :robot, format: :text
    end
  end
end
