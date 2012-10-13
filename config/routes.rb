Aio::Application.routes.draw do
  resources :roles
  devise_for :users

  namespace :admin do
    resources :users # Have the admin manage them here.
  end
  resources :assignments

  resources :companies
  resources :employments

  resources :products
  resources :customers

  root :to => 'admin/users#index'
end
