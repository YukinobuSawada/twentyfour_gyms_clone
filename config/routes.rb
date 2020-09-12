Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show,:edit,:update,:index]
  root 'users#top'
  resources :machines, only: [:new,:edit,:index,:create]
  get 'about' =>"users#about",as:'about'
  resources :gyms, only: [:new, :create, :index ,:destroy]
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
