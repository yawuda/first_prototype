Rails.application.routes.draw do


  get 'carts/show'

  get 'orders/order'
  
    resource :cart, only: [:show]
  
    resources :vins do
      resources :order_items, only: [:create, :update, :destroy]
      resources :reviews, only: [:create, :destroy]
    end

  devise_for :users
  root to: 'vins#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
