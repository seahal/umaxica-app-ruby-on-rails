
Rails.application.routes.draw do

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
      # contact page
      namespace :contact do
        resources :email, only: [ :update, :show ]
        resources :telephone, only: [ :update, :show ]
        resources :message, only: [ :update,  :create ]
      end
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
