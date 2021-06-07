Rails.application.routes.draw do
  get 'static_pages/company'
  get 'static_pages/home'
  get 'static_pages/help'
  devise_for :admins
  root to: 'posts#index'
  resources :posts do
    resources :likes, only: [:create, :destroy]
  end
end
