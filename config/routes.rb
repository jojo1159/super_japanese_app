Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # resources :users
  # Defines the root path route ("/")
  # root "articles#index"
  # default_url_options :host => "localhost:3000"

end
