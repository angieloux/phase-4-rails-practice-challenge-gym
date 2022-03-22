Rails.application.routes.draw do
  root "gyms#index"
  resources :memberships
  resources :clients
  resources :gyms
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
