Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  resources :banks
  resources :contacts
  resources :medicines
  resources :adoptions, only: :index
  resources :animals
end
