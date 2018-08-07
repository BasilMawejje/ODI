Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  resources :board_of_trustees
  resources :donors
  resources :home, only: [:index]
  resources :latest_news
  resources :work
end
