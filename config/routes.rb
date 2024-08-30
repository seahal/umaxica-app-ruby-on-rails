# frozen_string_literal: true


# TODO: You should get real 4 Domains for this projects.
Rails.application.routes.draw do
  # For User
  constraints ->(req) { req.host == ENV["RAILS_USER_URL"] } do
    namespace :user do
      # TODO: Homepage for users(???.COM)
      root to: "homepages#show"
      # TODO: add Health check routing for ???.com
      resource :health, only: :show
      # TODO: Create or Delete membership
      resources :memberships # FIXME: scope out this resource
      # TODO: Login or Logout
      resources :session # FIXME: scope out this resource
    end
  end


  # For Staff
  constraints ->(req) { req.host == ENV["RAILS_STAFF_URL"] } do
    namespace :staff do
      # TODO: Homepage for users(???.COM)
      root to: "homepages#show"
      # TODO: add Health check routing for ???.com
      resource :health, only: :show
      # TODO: Create or Delete membership
      resources :memberships # FIXME: scope out this resource
      # TODO: Login or Logout
      resources :session # FIXME: scope out this resource
    end
  end
end
