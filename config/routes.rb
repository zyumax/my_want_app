Rails.application.routes.draw do
  root 'products#index'
  resources :products
  # get 'products/index'
  # get 'products/new'
  # post 'products/new', to: 'products#create'
  # # # get 'products/show/:id'
  # get 'products/:id', to: 'products#show', as: 'product'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
