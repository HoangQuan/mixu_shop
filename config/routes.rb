MixuShop::Application.routes.draw do
  root :to => 'home#index'
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]

  namespace :admin do
    resources :products
    resources :product_types
  end

end
