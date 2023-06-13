Rails.application.routes.draw do
  resources :banks
  resources :contacts
  resources :medicines
  devise_for :users
  resources :animals
  resources :adoptions, only: :index
  root 'home#index'
end
