Rails.application.routes.draw do
  get 'static_pages/company', to: 'static_pages#company'
  get 'static_pages/employee', to: 'static_pages#employee'
  get 'static_pages/task', to: 'static_pages#task'
  get 'static_pages/faq', to: 'static_pages#faq'
  get 'static_pages/product_achivement', to: 'static_pages#product_achivement'
  get 'posts/index'
  
  devise_for :admins, controllers: {
       registrations: 'admins/registrations',
       sessions: 'admins/sessions'
}

  root to: 'static_pages#index'
  resources :posts, only: [:index, :new, :show, :create] do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: :create
  end
  resources :contacts, only: [:new, :create]
end
