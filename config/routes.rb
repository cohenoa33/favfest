Rails.application.routes.draw do
  get '/search', to:'artist_festivals#search',as: 'search_page'
  get '/signup', to:'fans#new', as: 'signup'
  get '/new', to: 'sessions#new', as: 'new'
  post '/login', to: 'sessions#create', as: 'login'
  get '/wishlist', to:'fans#show', as: 'wishlist'
  # post '/', to: 'favorites#create', as: 'favorite'
  delete '/sessions', to: 'sessions#destroy'
  resources :artists, only: [:index, :show]
  resources :fans, only: [:index, :show, :create]
  # resources :artist_festivals
  resources :festivals do 
    resources :favorites
  end


  # resources :organizers
  # resources :artist_festivals
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  end

