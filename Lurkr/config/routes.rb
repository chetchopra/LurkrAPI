Rails.application.routes.draw do
  resources :settings
  resources :favorites
  # resources :subreddits
  resources :subscriptions
  resources :users

  # Custom routes for subreddits
  get '/subreddits/:name', to: 'subreddits#show'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
