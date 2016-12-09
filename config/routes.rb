Rails.application.routes.draw do
  get 'charges/new'
  resources :charges, only: [:new, :create]
  get 'thanks', to: 'charges#thanks', as: 'thanks'
  get 'charges/create'
  
  resources :products, only: [:index]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy],defaults:{format:'js'}
  root to: "products#index"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
