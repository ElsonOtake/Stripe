class CheckoutController < ApplicationController
  def show
    current_user.set_payment_processor :stripe
    current_user.payment_processor.customer
    @checkout_session = current_user.payment_processor.checkout(
      mode: "payment",
      line_items: "price_1NPpT3AU4NmK8tFWxeNTbeL5",
      success_url: checkout_success_url
      # mode: "subscription",
      # line_items: "price_1NQBHWAU4NmK8tFWDyWdbP0x"
    )
  end
  
  def create
    product = Product.find(params[:id])
    @session = Stripe::Checkout::Session.create({
      mode: 'payment',
      payment_method_types: ['card'],
      line_items: [{
        price_data: {
          currency: 'usd',
          product_data: {
            name: product.name,
          },
          unit_amount: product.price,
        },
        quantity: 1,
      }],
      success_url: root_url,
      cancel_url: root_url,
    })

    # redirect_to root_path
  end

  def success
    # @session = Stripe::Checkout::Session.retrieve(params[:session_id])
    # @line_items = 
    # Lógica para processar a conclusão bem-sucedida do pagamento
  end

  def cancel
    # Lógica para lidar com o cancelamento do pagamento
  end
end
