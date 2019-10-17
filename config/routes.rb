Rails.application.routes.draw do


  root 'www#index'

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
