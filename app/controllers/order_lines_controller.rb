class OrderLinesController < ApplicationController
  skip_before_action :authenticate_user!, only: :create

  def create
    order = Order.find_by(id: session[:order_id])
    if order.present?
      @current_order = order
      order_line = OrderLine.new(order_line_creation_params)
      order.order_lines << order_line
    else
      order = Order.create(user: session[:session_id])
      order.order_lines << current_book.order_lines.create(order_line_creation_params)
      session[:order_id] = order.id
    end
    redirect_to books_path
  end

  private

  def order_line_creation_params
    {
      amount_of_products: 1,
      product_sku: permitted_params[:product_sku],
      price: permitted_params[:price],
      productable: current_book
    }
  end

  def current_book
    @current_book ||= Book.find(permitted_params[:book_id])
  end

  def permitted_params
    params.permit!
  end
end
