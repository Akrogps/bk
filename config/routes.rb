Rails.application.routes.draw do
  devise_for :admins
  root to: 'pages#home'
  resources :places, only: [:index, :show]
  resources :events, only: [:index, :show]
  resources :books, only: [:index, :show]
  resources :orders, only: :show
  resources :order_lines, only: :create
end
