Rails.application.routes.draw do
  resources :branches
  resources :class_rooms
  resources :professors
  resources :students
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
