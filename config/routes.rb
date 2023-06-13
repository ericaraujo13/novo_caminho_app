Rails.application.routes.draw do
  resources :banks
  resources :contacts
  resources :medicines
  devise_for :users
  root 'home#index'
  resources :adoptions, only: :index
  resources :animals
end
