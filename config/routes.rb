Rails.application.routes.draw do


  resources :user_groups
  resources :messages
  resources :conversations
  resources :conversation_types
  root 'www#index'

  get "get_json_code" => "www#get_json_code"

  # LINK UTILI
  get 'usefullinks' => 'www#useful_links'

  # INDEX
  get 'www/index'
  get 'index' => "www#index"

  # LOGIN Page
  get 'login', to: 'www#login'

  # SESSION
  post 'session/create'
  get 'session/destroy'

  # RISORSE
  resources :users
end
