Rails.application.routes.draw do
  resources :users
  
  get "/get-current-user" => "sessions#get_current_user"
  # Defines the root path route ("/")
  # root "articles#index"
end
