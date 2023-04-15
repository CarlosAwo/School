Rails.application.routes.draw do
  get 'dashboard/index'
  resources :branches
  resources :class_rooms
  resources :professors
  resources :students

  root "dashboard#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
