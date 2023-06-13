Rails.application.routes.draw do
  resources :medicines
  devise_for :users
  root 'home#index'

  resources :animals
end
