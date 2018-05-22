Rails.application.routes.draw do

  authenticated do
  root :to => 'projects#index'
  end

  root to: 'pages#home'

  devise_for :users do
    collection do
     get "advisor", to: "users#advisor"
    end
  end

  resources :projects do
    resources :projectmembers, only: [ :new, :create ]
  end

  get "/pages/entrepreneurs" => "pages#entrepreneurs"


end
