class OrdersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :destroy, :success]

  def show
    @order = Order.find_by(id: session[:order_id])
    @list_items = []
    @list_items = @order.order_lines.map do |line|
      { name: Book.where(id: line.productable_id)[0].title,
        images: [Book.where(id: line.productable_id)[0].images.first.photo_url],
        amount: line.price_cents,
        currency: 'eur',
        quantity: line.amount_of_products
      }
    end
    @list_items.flatten!

    stripe_session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [@list_items],
      success_url: success_orders_url,
      cancel_url: order_url(@order)
    )
    @order.update(checkout_stripe_session_id: stripe_session.id)
    redirect_to new_order_payment_path(@order)
  end

  def destroy
    @order = Order.find_by(id: session[:order_id])
    @order.destroy

    redirect_to new_order_payment_path(@order)
  end

  def success
    @order = Order.find_by(id: session[:order_id])
    @order.destroy
  end
end
