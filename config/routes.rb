Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  resources :users do
    collection do
      get 'advisors', to: "user#advisor"
    end
  end

  resources :projects

  get "/pages/:entrepreneur_page" => "pages#show"



end
