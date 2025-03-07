Rails.application.routes.draw do
  scope module: :api, as: :api do
  constraints host: ENV["API_CORPORATE_URL"] do
    scope module: :com, as: :com do
      # ROBOTS
      get "/robots.txt", to: "robots#show", as: :robot, format: :text
    end
  end

  constraints host: ENV["API_SERVICE_URL"] do
    scope module: :net, as: :net do
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

  # For Staff's webpages api.jp.example.org
  constraints host: ENV["API_STAFF_URL"] do
    scope module: :org, as: :org do
      #
      namespace :v1 do
        resource :health, only: :show
        resource :staging, only: :show
      end
      # robots
      get "/robots.txt", to: "robots#show", as: :robot, format: :text
    end
  end
  end
end
