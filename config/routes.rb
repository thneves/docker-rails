require 'sidekiq/web'

Rails.application.routes.draw do
  resources :texts
  devise_for :users

  root to: 'texts#new'

  mount Sidekiq::Web => '/sidekiq'
end
