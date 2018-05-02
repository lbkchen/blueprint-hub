Rails.application.routes.draw do
  get 'pages/home'

  resources :resources
  resources :users, only: [:index, :show]

  get '/home', to: 'pages#home'
  root to: 'pages#home'
end
