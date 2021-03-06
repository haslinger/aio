Aio::Application.routes.draw do
  resources :pages do
    member do
     get "read"
     get "dummy_in_aio"
     post "dummy_out_aio"
    end
  end

  resources :token_statuses

  resources :tokens do
    collection do
      get "show_waiting"
    end
    member do
      get "edit_aio"
      get "update_aio"
    end
  end

  resources :process_instances do
    collection do
      post "create_aio"
    end
  end

  resources :outgoing_arrows

  resources :step_actions

  resources :step_models

  resources :steps

  resources :business_processes

  resources :invoice_positions

  resources :invoice_headers do
    collection do
      get 'new_aio'
      post 'create_aio'

    end
  end

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

  root :to => "pages#read", :id => "1"
end
