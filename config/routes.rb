Aio::Application.routes.draw do
  resources :invoice_positions

  resources :invoice_headers

  devise_for :users

  namespace :admin do
    resources :users # Have the admin manage them here.
  end
  resources :roles
  resources :assignments

  resources :companies
  resources :employments

  resources :products
  resources :customers

  resources :paymentterms
  resources :currencies
  resources :units

  root :to => 'admin/users#index'
end
