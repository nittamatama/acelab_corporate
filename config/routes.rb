Rails.application.routes.draw do
  root to: 'posts#index'
  resources :posts, only: [:index, :new, :create, :show, :edit] do
    resources :likes, only: [:create, :destroy]
  end
end
