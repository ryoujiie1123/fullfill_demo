Rails.application.routes.draw do
  resources :clients
  resources :users
  root 'users#index'
  # resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
