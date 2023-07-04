Rails.application.routes.draw do
  devise_for :users
  resources :products
  # post "/checkout", to: "checkout#create"
  get "/checkout", to: "checkout#show"
  get "/checkout/success", to: "checkout#success"
  get "/checkout/cancel", to: "checkout#cancel"
  get "/billing", to: "billing#show"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "products#index"
end
