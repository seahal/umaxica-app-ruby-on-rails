# frozen_string_literal: true

Rails.application.routes.draw do
  # root to: redirect('/articles')
  root 'roots#index'

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


  # samples of learning
  resources :animals
end
