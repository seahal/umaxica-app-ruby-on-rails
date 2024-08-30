# frozen_string_literal: true

# TODO: You should get real 4 Domains for this projects.

if Rails.env.test?
  ENV["RAILS_USER_URL"] =  ENV["RAILS_STAFF_URL"] = 'www.example.com'
end

Rails.application.routes.draw do
  # For User's pages (???.COM)
  constraints host: ENV["RAILS_USER_URL"] do
    # No homepage for user's page. This is because I would like to create user's homepage for remix.

    namespace :user do
      # TODO: add Health check routing for ???.com
      resource :health, only: :show
      # TODO: Create or Delete membership
      resources :memberships # FIXME: scope out this resource
      # TODO: Login or Logout
      resources :session # FIXME: scope out this resource
    end
  end


  # For Staff's webpages (???.NET)
  constraints host: ENV["RAILS_STAFF_URL"] do
    # Homepage
    get '/' => "staff/homepages#index", as: :staff_root

    namespace :staff do
      # TODO: add Health check routing for ???.com
      resource :health, only: :show
      # TODO: Create or Delete membership
      resources :memberships # FIXME: scope out this resource
      # TODO: Login or Logout
      resources :session # FIXME: scope out this resource
    end
  end
end
