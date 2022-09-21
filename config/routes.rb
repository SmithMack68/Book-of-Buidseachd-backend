Rails.application.routes.draw do
  resources :casts
  resources :spells
  resources :users
  
  get "/get-current-user" => "sessions#get_current_user"
  post "/login" => "sessions#login"
  # # Defines the root path route ("/")
  # root "articles#index"
end
