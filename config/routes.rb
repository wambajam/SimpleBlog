Rails.application.routes.draw do
  resources :posts
  resources :users, only: [:new, :create]

  get 'contact', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  root 'posts#index'
end
