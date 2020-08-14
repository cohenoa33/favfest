Rails.application.routes.draw do
  resources :organizers
  resources :artist_festivals
  resources :artists
  resources :favorites
  resources :festivals
  resources :fans
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
