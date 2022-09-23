Rails.application.routes.draw do
  resources :casts
  resources :spells
  resources :users, only: [:show, :create]#create is sign up

  #JWT
  get "/get-current-user" => "sessions#get_current_user"
  post "/login" => "sessions#login"
  
  # Sessions
  # post '/signup', to: 'users#create'
  # get '/current-user', to: 'users#get_current_user'
  # post '/login', to: 'sessions#create'
  # delete 'logout', to: 'sessions#destroy
end
