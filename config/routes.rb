# == Route Map
#

Rails.application.routes.draw do
  resources :orders
  resources :bounties
  resources :tasks
  get 'home/index'
  get 'home/spend'
  get 'home/earn'
  get 'home/wallet'
  get 'home/community'
  devise_for :users

  post "openai/summerize"
  post "openai/completions"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "home#index"
end
