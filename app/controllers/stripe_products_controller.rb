# frozen_string_literal: true

class StripeProductsController < ApplicationController
  def index
    @products = Stripe::Product.list(expand: ['data.default_price'])
  end
end
