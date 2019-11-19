Rails.application.routes.draw do
  devise_for :admins
  root to: 'pages#home'
  resources :places, only: [:index, :show]
  resources :events, only: [:index, :show]
  resources :books, only: [:index, :show]
  resources :orders, only: :show do
    resources :payments, only: :new
  end
  resources :order_lines, only: :create
end
