Rails.application.routes.draw do
  get 'dishes/index'
  devise_for :users
  root to: 'pages#home'

  get '/dinner', to: 'pages#dinner'
  resources :dishes, only: :index
end
