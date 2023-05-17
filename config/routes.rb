Rails.application.routes.draw do
  resources :payments
  resources :customers
  resources :measures
  resources :products
  resources :commands
  devise_for :users
  resources :users

  root "dashboard#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
