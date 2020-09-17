Rails.application.routes.draw do
  get 'favorites/create'
  get '/map_request', to: 'maps#map', as: 'map_request'
  get 'favorites/destroy'
  devise_for :users
  resources :users, only: [:show,:edit,:update,:index]
  root 'users#top'
  resources :machines, only: [:new,:edit,:index,:create]
  get 'about' =>"users#about",as:'about'
  resources :gyms, only: [:new, :create, :index ,:destroy,:show]do
  resources :gym_comments,only:[:create,:destroy]do
  resource :favorites, only: [:create, :destroy]
end
end
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
