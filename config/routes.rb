Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end
  resources :users, only: [:index, :show] do
    resources :posts, only: :index
    get :following, to: 'users#following'
    get :followers, to: 'users#followers'
    member do
      get :likes
    end
  end
  resources :posts, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: :create
    resources :likes, only: [:create, :destroy]
  end
  root to: 'home#index'
  resources :relationships, only: [:create, :destroy]
end