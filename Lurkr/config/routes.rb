Rails.application.routes.draw do
  resources :themes
  resources :settings
  resources :favorites
  # resources :subreddits
  resources :subscriptions
  # resources :users

  # Custom routes for subreddits
  get '/subreddits/:name', to: 'subreddits#show'
  post '/subreddits', to: 'subreddits#create'
  delete '/subreddits', to: 'subreddits#destroy'
  get '/subredditspost', to: 'subreddits#showPost'
  

  # Custom routes for users
  get '/users/:id', to: 'users#show'
  get '/users/login/:username', to: 'users#checkForUser'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
