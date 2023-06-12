Rails.application.routes.draw do
  resources :banks
  resources :contacts
  resources :medicines
  devise_for :users
  root 'home#index'

  resources :animals
end
