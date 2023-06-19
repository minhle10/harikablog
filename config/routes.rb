Rails.application.routes.draw do
  devise_for :users
  root "home#index"

  get "/home", to: "home#index"
  get "/about", to: "about#index"
  get "/chats", to: "chats#index"
  resources :posts do
    resources :comments
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :chats, only: %i[create show] do
    resources :messages, only: %i[create]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
