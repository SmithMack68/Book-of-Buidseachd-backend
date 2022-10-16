Rails.application.routes.draw do
  resources :reviews, only: [:index, :show, :create, :update, :destroy]
  resources :spells, only: [:index, :show] 
  resources :users, only: [:index, :show, :create] #create is sign up

  
  
  # Sessions custom routes
  post '/signup', to: 'users#create'
  get '/current-user', to: 'users#get_current_user'

  get "/me", to: 'users#show'

  post '/login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # post '/spells/:spell_id/reviews', 'reviews#'
end








# #JWT
  # get "/get-current-user" => "sessions#get_current_user"
  # post "/login" => "sessions#login"