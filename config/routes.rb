Rails.application.routes.draw do

  get 'profiles/profile'

  root to: 'pages#home'

  authenticated do
    root to: 'projects#index'
  end

  devise_for :users do
    resources :profiles, only: [:new, :create, :edit, :update]
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
