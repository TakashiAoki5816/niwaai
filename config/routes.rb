Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  resources :posts, only: [:new, :create, :show]
  resources :users, only: :show
end