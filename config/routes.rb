Rails.application.routes.draw do
  resources :actor_movies
  resources :movies
  resources :addresses
  resources :categories
  resources :actors
  resources :directors
  resources :persons

  post "/persons/create", to: "persons#create"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
