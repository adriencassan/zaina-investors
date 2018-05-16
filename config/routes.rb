Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  resources :users do
    resources :projects
    collection do
      get 'advisors', to: "restaurants#advisors"
    end
  end

end
