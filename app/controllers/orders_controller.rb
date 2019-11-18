class OrdersController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def show
    @order = Order.find_by(id: session[:order_id])
    @list_items = []
    @list_items = @order.order_lines.map do |line|
      { name: Book.where(id: line.productable_id)[0].title,
        images: [Book.where(id: line.productable_id)[0].images.first.photo_url],
        amount: 60,
        currency: 'eur',
        quantity: 2
      }
    end
    @list_items.flatten!

    stripe_session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [@list_items.first],
      success_url: order_url(@order),
      cancel_url: order_url(@order)
    )
    raise
    @order.update(checkout_session_id: stripe_session.id)
    redirect_to new_order_payment_path(@order)
  end
end
