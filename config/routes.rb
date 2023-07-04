Rails.application.routes.draw do
  resources :products
  # post "/checkout", to: "checkout#create"
  get "/checkout", to: "checkout#show"
  get "/billing", to: "billing#show"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "products#index"
end
