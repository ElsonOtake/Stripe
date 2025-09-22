class CheckoutController < ApplicationController
  def index;end
  
  def show
    @price = Stripe::Price.retrieve(params[:line_items])
    @product = Stripe::Product.retrieve(@price.product)

    # Create checkout session (Stripe will create customer if needed)
    session_params = {
      mode: params[:payment_mode],
      line_items: [{ price: params[:line_items], quantity: 1 }],
      success_url: checkout_success_url,
      cancel_url: checkout_cancel_url,
    }

    # Add customer if exists
    if current_user.payment_processor.processor_id.present?
      session_params[:customer] = current_user.payment_processor.processor_id
    else
      session_params[:customer_email] = current_user.email
    end

    @checkout_session = Stripe::Checkout::Session.create(session_params)
  end
  
  def create
    @product = Product.find(params[:id])

    # Create checkout session (Stripe will create customer if needed)
    session_params = {
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
      cancel_url: checkout_cancel_url,
    }

    # Add customer if exists
    if current_user.payment_processor.processor_id.present?
      session_params[:customer] = current_user.payment_processor.processor_id
    else
      session_params[:customer_email] = current_user.email
    end

    @checkout_session = Stripe::Checkout::Session.create(session_params)
  end

  def success
    @session = Stripe::Checkout::Session.retrieve(params[:session_id])
    @line_items = Stripe::Checkout::Session.list_line_items(params[:session_id])
    payment_intent = Stripe::PaymentIntent.retrieve(@session.payment_intent)
    @charge = Stripe::Charge.retrieve(payment_intent.latest_charge)
  end

  def cancel
  end

  private

  def checkout_success_url
    "#{request.base_url}/checkout/success?session_id={CHECKOUT_SESSION_ID}"
  end

  def checkout_cancel_url
    "#{request.base_url}/checkout/cancel"
  end
end
