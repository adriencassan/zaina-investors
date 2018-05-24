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
    
    resources :projectmessages, only: [ :new, :create ]
    
    resources :projectmembers, only: [ :new, :create, :edit, :update]

  end



  get "/pages/entrepreneurs" => "pages#entrepreneurs"

  get "/pages/advisors" => "pages#advisors"

  get "/pages/packages" => "pages#packages"

end
