Rails.application.routes.draw do
  root to: 'posts#index'
  resources :posts, only: [:index, :new] do
    resources :likes, only: [:create]
  end
end
