# frozen_string_literal: true

Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  devise_for :users
  root 'home#index'

  resources :banks
  resources :contacts
  resources :medicines
  resources :adoptions, only: :index
  resources :animals do
    member do
      patch :adoption
    end
  end
end
