Rails.application.routes.draw do
  devise_for :users
  root "home#index"

  get "/home", to: "home#index"
  get "/about", to: "about#index"
  resources :posts do
    resources :comments
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
