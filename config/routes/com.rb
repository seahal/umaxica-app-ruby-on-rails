
Rails.application.routes.draw do
  constraints host: ENV["API_CORPORATE_URL"] do
    scope module: :com, as: :com do      # Homepage
      root to: "roots#index"
      resource :health, only: :show      # health check for html
      resource :term, only: :show # show latest 'term of use'
      # show stating env
      resource :staging, only: :show
      # show search pages
      resource :search, only: :show
      # non-loggined settings
      resource :privacy, only: [ :show, :edit ]
      resource :contact, only: [ :new, :create ]
      namespace :contact do
        resources :email, only: [ :update, :show ]
        resources :telephone, only: [ :update, :show ]
        resources :message, only: [ :update,  :create ]
      end
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
end
