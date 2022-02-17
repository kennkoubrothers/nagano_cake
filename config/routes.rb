Rails.application.routes.draw do

  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }

  namespace :admin do

    resources :genres, only: [:create, :index, :edit, :update]

    resources :items, only: [:new, :create, :index, :show, :edit, :update]

    patch "admin/order_details/:id" => "order_details#update"

    resources :orders, only: [:index, :show, :update]

    resources :customers, only: [:index, :show, :edit, :update]

    get 'homes/top'

  end


  scope module: :public do
    patch "customers/withdraw" => "customers#withdraw"
    resources :genres, only: [:index]

    resources :items, only: [:index, :show]

    resources :orders, only: [:new, :create, :index, :show]
    post "orders/confirm" => "orders#confirm"
    get "orders/complete" => "orders#complete"

    resources :cart_items, only: [:index, :create, :update, :destroy]
    delete "cart_items/destroy_all" => "cart_items#destroy_all"

    resources :deliveries, only: [:index, :edit, :create, :update, :destroy]

    resource :customers, only: [:edit, :update]
    get "customers/my_page" => "customers#show"
    get "customers/unsubscribe" => "customers#unsubscribe"

    get 'homes/top'
    get 'homes/about'
  end

  devise_for :customers, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
