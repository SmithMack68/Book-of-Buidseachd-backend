Rails.application.routes.draw do
  resources :reviews, only: [:index, :show, :create, :update, :destroy]
 
  resources :users, only: [:index, :show, :create] #create is sign up

  resources :spells, only: [:index, :show, :create, :update, :destroy]
  
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

# Build a custom route which gets all spells that have reviews with a specific key word. 
# Use a GET route and make sure that the review just contains that word in the comment field. 
# The search should be case insensitive and only expect one word, not a phrase.

 
 # get '/spells/:spell_id/reviews/:searchterm', to: 'spells#spells_search'