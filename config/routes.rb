Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  resources :board_of_trustees
  resources :secretariat
  resources :governing_board
  resources :faq
  resources :donors
  resources :partners
  resources :home, only: [:index]
  resources :latest_news
  resources :works
  resources :contact, only: [:index, :new, :create]
  resources :about, only: [:index]
  resources :subscription
  get 'plans' => 'subscription#plans'
  post 'stripe_checkout' => 'subscription#stripe_checkout'
  post 'subscription_checkout' => 'subscription#subscription_checkout'
  post 'webhooks' => 'subscription#webhooks'
end
