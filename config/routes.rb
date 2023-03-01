Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users

  get '/dinner', to: 'pages#dinner'
  resources :dishes, only: :index
end
