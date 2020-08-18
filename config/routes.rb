Rails.application.routes.draw do
  get '/search', to:'festivals#search', :as => 'search_page'
  get '/signup', to:'fans#new', as: 'signup'
  get '/new', to: 'sessions#new', as: 'new'
  post '/login', to: 'sessions#create', as: 'login'
  # post '/', to: 'favorites#create', as: 'favorite'
  delete '/sessions', to: 'sessions#destroy'
  resources :artists, only: [:index, :show]
  resources :fans, only: [:index, :show, :create]
  resources :festivals do 
    resources :favorites
  end


  # resources :organizers
  # resources :artist_festivals
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  end

