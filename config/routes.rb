Rails.application.routes.draw do
  get 'static_pages/company', to: 'static_pages#company'
  get 'static_pages/employee', to: 'static_pages#employee'
  get 'static_pages/task', to: 'static_pages#task'
  
  devise_for :admins
  root to: 'posts#index'
  resources :posts do
    resources :likes, only: [:create, :destroy]
  end
end
