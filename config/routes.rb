Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  get 'sessions/new'

  get 'users/new'

  get 'brands/dashboard'


  get 'collections/index'
  #get "logout" => "sessions#destroy", :as => "logout"
  #get "login" => "sessions#new", :as => "login"
  #get "login" => "sessions#create", :as => "login"
  #get    '/login',   to: 'sessions#create'

  get  '/signup',  to: 'users#new'
  get "brands" => "brands#new", :as => "brands"
  get "retailers" => "retailers#new", :as => "retailers"
  get "blog" => "blog#new", :as => "blog"


  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  root "homepage#index"

  resources :users
  resources :collections
  resources :sessions
  resources :account_activations, only: [:edit]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
