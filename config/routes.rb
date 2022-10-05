Rails.application.routes.draw do
  resources :reviews, only: [:index, :show, :create, :update, :destroy]
  resources :casts, only: [:create]
  resources :spells, only: [:index, :show]
  resources :users, only: [:index, :show, :create] #create is sign up

  #resources :spells do
  #  resources :reviews, only: [:create, :index]
  
  # Sessions custom routes
  post '/signup', to: 'users#create'
  get '/current-user', to: 'users#get_current_user'

  get "/me", to: 'users#show'

  post '/login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

end


# #JWT
  # get "/get-current-user" => "sessions#get_current_user"
  # post "/login" => "sessions#login"