Rails.application.routes.draw do
  root to: 'posts#index'
  resources :posts do
    resources :likes, only: [:create, :destroy]
  end
end
