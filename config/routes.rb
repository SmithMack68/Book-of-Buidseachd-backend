Rails.application.routes.draw do
  resources :casts, only: [:create]
  resources :spells, only: [:index, :show]
  resources :users #, only: [:show, :create] #create is sign up

  
  
  # Sessions custom routes
  post '/signup', to: 'users#create'
  get '/current-user', to: 'users#get_current_user'
  post '/login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

end


# #JWT
  # get "/get-current-user" => "sessions#get_current_user"
  # post "/login" => "sessions#login"