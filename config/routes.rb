Rails.application.routes.draw do
  get 'static_pages/company', to: 'static_pages#company'
  devise_for :admins
  root to: 'posts#index'
  resources :posts do
    resources :likes, only: [:create, :destroy]
  end
end
