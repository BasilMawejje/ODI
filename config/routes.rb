Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  resources :board_of_trustees
  resources :donors
  resources :home, only: [:index]
  resources :latest_news
  resources :works
  resources :contact, only: [:index, :new, :create]
  resources :about, only: [:index]
  resources :newsletters, only: [:create]
  resources :subscription
  get 'plans' => 'subscription#plans'
  post 'stripe_checkout' => 'subscription#stripe_checkout'
  post 'subscription_checkout' => 'subscription#subscription_checkout'
  post 'webhooks' => 'subscription#webhooks'
end
