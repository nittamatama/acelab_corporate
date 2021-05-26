Rails.application.routes.draw do
  devise_for :admins
  root to: 'posts#index'
  resources :posts do
    resources :likes, only: [:create, :destroy]
  end
end
