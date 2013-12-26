MixuShop::Application.routes.draw do
  root :to => 'products#index'
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]

  resources :users, only: :show
  resources :products
  namespace :admin do
    resources :products
    resources :product_types
    resources :users
  end

end
