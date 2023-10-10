Rails.application.routes.draw do
  resources :softwares
  resources :devices
  resources :categories
  resources :manufacturers
  resources :employees
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
