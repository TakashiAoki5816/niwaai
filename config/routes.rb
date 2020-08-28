Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  resources :users, only: :show do
    member do
      get :likes
    end
  end
  resources :posts, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: :create
    resources :likes, only: [:create, :destroy]
  end
end