Rails.application.routes.draw do
  devise_for :users
  resources :products
  get "/checkout", to: "checkout#show"
  get "/checkout/index", to: "checkout#index"
  get "/checkout/create", to: "checkout#create"
  get "/checkout/success", to: "checkout#success"
  get "/checkout/cancel", to: "checkout#cancel"
  get 'stripe_products/index', as: "stripe_products"
  get 'stripe_subscriptions/index', as: "stripe_subscriptions"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "products#index"
end
