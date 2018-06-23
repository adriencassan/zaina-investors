Rails.application.routes.draw do


  devise_for :users

  root to: 'pages#home'

  resources :investors, only: [:index]

  resources :investors do
     resources :investor_sectors
  end

end
