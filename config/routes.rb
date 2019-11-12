Rails.application.routes.draw do
  devise_for :admins
  root to: 'pages#home'
  resources :places
  resources :events
  resources :books
  resources :orders, only: :show
  resources :order_lines, only: :create
end
