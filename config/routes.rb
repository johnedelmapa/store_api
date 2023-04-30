Rails.application.routes.draw do
  resources :stores, only: [:create] do
    resources :products, only: [:create, :index]
  end
  resources :products, only: [:show] do
    member do
      post :inventory, to: 'products#update_inventory'
    end
  end
end
