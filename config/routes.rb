Aio::Application.routes.draw do

  resources :products

  resources :customers
  
  devise_for :users
  
  namespace :admin do
    resources :users # Have the admin manage them here.
  end

  root :to => 'admin/users#index'

end
