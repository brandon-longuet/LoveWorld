Rails.application.routes.draw do
  resources :event_members
  resources :group_members
  resources :events
  resources :groups
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
