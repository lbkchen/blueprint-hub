Rails.application.routes.draw do
  get 'objectives/complete'

  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :resources
  resources :users, only: [:index, :show]
  resources :sprints do
    resources :objectives, only: [:create, :update, :destroy] do
      member do
        patch 'complete'
      end
    end
  end

  get '/home', to: 'sprints#index', as: 'home'
  get '/links', to: 'resources#index', as: 'links'
  get '/paws', to: 'pages#paws', as: 'paws'

  root to: 'sprints#index'
end
