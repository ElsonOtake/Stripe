Rails.application.routes.draw do
  get 'stripe_subscriptions/index'
  devise_for :users
  resources :products
  get "/checkout", to: "checkout#show"
  get "/checkout/create", to: "checkout#create"
  get "/checkout/success", to: "checkout#success"
  get "/checkout/cancel", to: "checkout#cancel"
  get 'stripe_products/index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "products#index"
end
