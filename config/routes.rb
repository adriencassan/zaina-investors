Rails.application.routes.draw do

  authenticated do
  root :to => 'projects#index'
  end

  root to: 'pages#home'

  devise_for :users
  resources :projects
  get "/pages/entrepreneurs" => "pages#entrepreneurs"

end
