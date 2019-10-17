Rails.application.routes.draw do
  root 'www#index'

  # INDEX
  get 'www/index'

  # LOGIN Page
  get 'login', to: 'www#login'

  # SESSION
  post 'session/create'
  get 'session/destroy'

  # RISORSE
  resources :users
end
