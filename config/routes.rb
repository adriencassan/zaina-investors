Rails.application.routes.draw do

  devise_for :users, controllers: { sessions: 'users/sessions' }
  root to: 'pages#home'

  resources :projects

  get "/pages/entrepreneurs" => "pages#entrepreneurs"



end
