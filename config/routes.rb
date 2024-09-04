# frozen_string_literal: true

# TODO: You should get real 4 Domains for this projects.
Rails.application.routes.draw do
  # For User's pages (???.COM)
  constraints host: ENV["RAILS_USER_URL"] do
    scope module: :user, as: :user do
      # Homepage only behaves redirect page. This is because I would like to create user's homepage for remix.
      root to: redirect(ENV["REMIX_URL"])
      # TODO: add Health check routing for ???.com
      resource :health, only: :show
      # TODO: Create or Delete membership
      resource :registration, only: :new do
        resources :emails, only: [ :new, :create, :edit, :update ], controller: "registration_emails"
        resources :phones, except: [], controller: "registration_phones"
      end
      # TODO: Login or Logout
      resources :session # FIXME: scope out this resource
    end
  end

  # For Staff's webpages (???.NET)
  constraints host: ENV["RAILS_STAFF_URL"] do
    scope module: :staff, as: :staff do
      # Homepage
      root to: "roots#index"
      # TODO: add Health check routing for ???.com
      resource :health, only: :show
      # TODO: Owner's lounge
      resource :owner, only: :show
      # TODO: Create or Delete membership
      resources :memberships # FIXME: scope out this resource
      # TODO: Login or Logout
      resources :session # FIXME: scope out this resource
    end
  end
end
