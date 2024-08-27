# frozen_string_literal: true

Rails.application.routes.draw do
  root 'roots#index'

  # For Health Check
  get 'status' => 'rails/health#show', as: :rails_health_check
end
