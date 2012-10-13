Aio::Application.routes.draw do
  resources :users

  devise_for :users

  root :to => 'users#index'

end
