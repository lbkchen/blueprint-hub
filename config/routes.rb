Rails.application.routes.draw do
  resources :resources
  resources :users, only: [:index, :show]
end
