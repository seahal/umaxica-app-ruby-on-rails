Rails.application.routes.draw do
  constraints host: ENV["DEVELOPER_URL"] do
    # Homepage
    scope module: :dev, as: :dev do
      # Homepage
      root to: "roots#index"
    end
  end
end
