Rails.application.routes.draw do
   get 'dashboard/index'
  resources :employees
  resources :softwares
  resources :devices
  resources :categories
  resources :manufacturers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'search', :to => 'search#index'

  # Defines the root path route ("/")
  root "dashboard#index"
end
