Rails.application.routes.draw do
  resources :advises
  resources :favorites
  resources :ratings
  resources :messages
  resources :pictures
  resources :enterprises
  resources :category_enterprises
  resources :sub_categories
  resources :categories
  resources :category_preferences
  resources :preferences
  resources :friends
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
