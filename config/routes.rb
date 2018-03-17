Rails.application.routes.draw do
  get 'products', to: 'products#index'
  get 'users', to: 'users#index'
  get 'products_user', to: 'users#product_user'
  
  resources :products #CREA TODAS LAS RUTAS PARA CRUD
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
