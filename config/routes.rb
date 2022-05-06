Rails.application.routes.draw do
  root "products#index"
  get 'products/index'
  get 'products/new' 
  post 'products/new', to: 'products#create'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  

end
