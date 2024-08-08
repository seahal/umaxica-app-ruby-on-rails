# frozen_string_literal: true

Rails.application.routes.draw do
  resources :animals
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.

  # root to: redirect('/articles')
  root 'roots#index' # Defines the root path route ("/")
  
  get 'status' => 'rails/health#show', as: :rails_health_check

  resources :connects
  resources :articles, only: [:index]
  resources :accounts, only: [:index]
  resources :sessions, only: [:index]
  resources :books
  resources :people

  get 'study/hello_importmap'
  get 'study/new_turbo'
  post 'study/create_turbo'
end
