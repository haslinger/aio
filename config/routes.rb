Aio::Application.routes.draw do
  namespace :admin do
    resources :users # Have the admin manage them here.
  end

  devise_for :users

  root :to => 'admin/users#index'

end
