Rails.application.routes.draw do
  get 'items/index'
  get 'items/new'
  get 'items/create'
  root to: 'items#index'
  devise_for :users
  resources :items
  resource :users, only: :show
end
