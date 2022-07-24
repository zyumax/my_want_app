Rails.application.routes.draw do
  devise_for :users
  root 'products#index'
  get 'products/predict'
  resources :products
  get 'top' => 'home#top'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
