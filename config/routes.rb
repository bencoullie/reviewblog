Rails.application.routes.draw do
  get 'tags/:tag', to: 'posts#index', as: :tag
  resources :posts

  devise_for :users
  resources :users, only: [:show]

  root 'pages#home'

  resources :users
end
