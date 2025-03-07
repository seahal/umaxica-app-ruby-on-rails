
Rails.application.routes.draw do
  constraints host: ENV["API_DEVELOPER_URL"] do
    scope module: :com, as: :dev do      # Homepage
      root to: "roots#index"
    end
  end
end
