# frozen_string_literal: true

Rails.application.routes.draw do
  resources :citizens, except: [:destroy]
  root 'home#index'
end
