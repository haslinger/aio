Aio::Application.routes.draw do
  resources :products

  resources :customers

  resources :users

  devise_for :users

  root :to => 'users#index'

end
