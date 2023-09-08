# frozen_string_literal: true

Rails.application.routes.draw do
  get 'elastic/index'
  post 'search', to: 'elastic#index'
  resources :citizens
  root 'home#index'
end
