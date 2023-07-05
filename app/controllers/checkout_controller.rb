class CheckoutController < ApplicationController
  def show
    # current_user.set_payment_processor :stripe
    # current_user.payment_processor.customer
    @checkout_session = current_user.payment_processor.checkout(
      mode: params[:payment_mode],
      line_items: params[:line_items],
      success_url: checkout_success_url
    )
  end
  
  def create
    @product = Product.find(params[:id])
    @checkout_session = current_user.payment_processor.checkout(
      mode: 'payment',
      line_items: [{
        price_data: {
          currency: 'usd',
          product_data: {
            name: @product.name,
          },
          unit_amount: @product.price,
        },
        quantity: 1,
      }],
      success_url: checkout_success_url,
      cancel_url: root_url,
    )
  end

  def success
    # Stripe::Checkout::Session.methods
    @session = Stripe::Checkout::Session.retrieve(params[:session_id])
    @line_items = Stripe::Checkout::Session.list_line_items(params[:session_id])
  end

  def cancel
  end
end
