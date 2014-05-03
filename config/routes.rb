Synthfinder::Application.routes.draw do
  root "synths#index"

  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"}

  resources :synths

  get "/users/role", to: "users#show_role", as: :user_show_role
  patch "/users/role", to: "users#update_role"


end
