Rails.application.routes.draw do
  resources :takings
  root 'application#cafe'
  get "seets/index_user" => "seets#index_user"
  resources :seets
  resources :clients
  resources :users
  get "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"
  root 'users#index'
  get "cliients/:id" => "clients#show"
  # resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
