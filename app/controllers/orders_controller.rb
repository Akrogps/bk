class OrdersController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def show
    @order = Order.find_by(id: session[:order_id])
    @list_items = []
    @list_items = @order.order_lines.map do |line|
      { product_sku: line.product_sku, price: line.price_cents, amount_of_products: 1 }
    end
    @list_items.flatten!

    stripe_session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: @list_items,
      success_url: order_url(@order),
      cancel_url: order_url(@order)
    )
    @order.update(checkout_session_id: stripe_session.id)
    redirect_to new_order_payment_path(order)
  end
end
