Rails.application.routes.draw do


  devise_for :users

  root to: "investors#index"

  resources :investors, only: [:index]
  get 'investors/export', to: "investors#export", defaults: { format: 'csv' }

  resources :investors do
     resources :investor_sectors
     resources :investor_contacts
  end

end
