require 'sidekiq/web'

Rails.application.routes.draw do
  resources :orders
  resources :customers
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'channel/Orders'
  get 'chanel/Orders'
  resources :channels
  resources :staffs
  resources :sales_records
  resources :order_items
  resources :foods
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end


  devise_for :users
  root to: 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
