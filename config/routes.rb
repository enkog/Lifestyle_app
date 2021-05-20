Rails.application.routes.draw do
  root to: 'categories#index'
  resources :organizations
  resources :votes
  resources :categories
  resources :users
  resources :articles

  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
