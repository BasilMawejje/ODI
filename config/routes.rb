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
end
