
Rails.application.routes.draw do

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
      # contact page
      namespace :contact do
        resources :email, only: [ :update, :show ]
        resources :telephone, only: [ :update, :show ]
        resources :message, only: [ :update,  :create ]
      end
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
end
