Rails.application.routes.draw do
  require 'sidekiq/web'

  root "articles#index"

  resources :articles do
    resources :comments
  end

  mount Sidekiq::Web => '/sidekiq'
end
