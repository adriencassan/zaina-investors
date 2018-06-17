Rails.application.routes.draw do




  root to: 'pages#home'


  authenticated do
    root to: 'projects#index'
  end


  devise_for :users, :controllers => {:registrations => "registrations"} do
    collection do
     get "advisor", to: "users#advisor"
    end
  end

  resources :profiles, only: [:show, :new, :create, :edit, :update] do
      get "resume_fullpage", to: "profiles#resume_fullpage"
  end

  resources :projects do
    member do
      patch "confirm_call", to: "projects#confirm_call"
      patch "complete_call", to: "projects#complete_call"
    end
    resources :projectmessages, only: [ :new, :create ]
    resources :projectmembers, only: [ :new, :create, :edit, :update]
    resources :investors
    resources :companies
  end

  get "/pages/entrepreneurs" => "pages#entrepreneurs"

  get "/pages/advisors" => "pages#advisors"

  get "/pages/about" => "pages#about"
  get "/pages/teamoverview" => "pages#teamoverview"
  get "/pages/advisorsoverview" => "pages#advisorsoverview"



end
