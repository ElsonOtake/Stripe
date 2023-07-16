class StripeSubscriptionsController < ApplicationController
  def index
    @products = Stripe::Product.list(expand: ['data.default_price'])
  end
end
