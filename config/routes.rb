Rails.application.routes.draw do
  devise_for :admins
  root to: 'pages#home'
  resources :places, only: [:index, :show]
  resources :events, only: [:index, :show]
  resources :books, only: [:index, :show]
  resources :orders, only: [:show, :destroy] do
    collection do
      get :success
    end
    resources :payments, only: :new
  end
  resources :order_lines, only: [:create, :update, :destroy]
end
