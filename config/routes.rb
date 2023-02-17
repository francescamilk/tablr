Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/dinner', to: 'pages#dinner'
  resources :dishes, only: :index
end
