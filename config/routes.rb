Rails.application.routes.draw do
  root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]

  resources :fishs, only: [:create, :destroy]
  
#  post 'fishs/:id/create', to: 'fishs#create'
#  delete 'fishs/:id/create', to: 'fishs#destroy'
end