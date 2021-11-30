Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    unauthenticated :user do
        root to: "devise/sessions#new",as: :unauthenticated_root #设定登录页为系统默认首页
    end
    authenticated :user do
        root to: "store#index",as: :authenticated_root #设定系统登录后首页
    end

    authenticated :admin_user do
       root to: "admin#index"
    end
end
  get 'cookies/index'
  get 'cakes/index'
  get 'chocolate/index'
  get 'carts/delete_one_pro'
  get 'carts/order_info'
  post 'orders/new_order'
  get 'orders/index'
  resources :line_items
  resources :carts
  root 'store#index', as:  'store_index'
  resources :products



  get 'contact', to: 'store#contact'
  post 'request_contact', to: 'store#request_contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
