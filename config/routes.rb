Rails.application.routes.draw do
  resources :organizations
  resources :votes
  resources :categories
  resources :users
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
