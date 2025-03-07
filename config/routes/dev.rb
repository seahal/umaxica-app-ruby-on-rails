Rails.application.routes.draw do
  constraints host: ENV["DEVELOPER_URL"] do
    # Homepage
    scope module: :dev, as: :dev do
      # Homepage
      root to: "roots#index"

      # for api
      resource :api, only: :show, shallow: true do
        resource :com, only: [ :show ]
        resource :net, only: [ :show ]
        resource :org, only: [ :show ]
      end

      # for www
      resource :www, only: :show, shallow: true do
        resource :com, only: [ :show ]
        resource :net, only: [ :show ]
        resource :org, only: [ :show ]
      end
    end
  end
end
