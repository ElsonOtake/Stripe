class CheckoutController < ApplicationController
  def show
    current_user.processor = :stripe
    current_user.customer

    @checkout_session = current_user.payment_processor.checkout(
      mode: "payment",
      line_items: "price_1NPpT3AU4NmK8tFWxeNTbeL5"
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
    # Lógica para processar a conclusão bem-sucedida do pagamento
  end

  def cancel
    # Lógica para lidar com o cancelamento do pagamento
  end
end
