# frozen_string_literal: true

Rails.application.routes.draw do
  resources :citizens
  root 'home#index'
end
