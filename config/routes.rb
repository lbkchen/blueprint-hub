Rails.application.routes.draw do
  resources :resources
  resources :users, only: [:index, :show]
  resources :sprints

  get '/home', to: 'pages#home'
  root to: 'sprints#index'
end
