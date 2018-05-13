Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :resources
  resources :users, only: [:index, :show]
  resources :sprints do
    resources :objectives, only: [:create, :update, :destroy]
  end

  get '/home', to: 'sprints#index', as: 'home'
  get '/links', to: 'resources#index', as: 'links'

  root to: 'sprints#index'
end
