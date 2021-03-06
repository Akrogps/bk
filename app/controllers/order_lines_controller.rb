class OrderLinesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create, :update, :destroy]

  def create
    order = Order.find_by(id: session[:order_id])
    if order.present?
      existing_product_order_line = order.order_lines.find_by(product_sku: permitted_params[:product_sku])
      if existing_product_order_line.present?
        existing_product_order_line.update(
          amount_of_products: existing_product_order_line.amount_of_products + 1
        )
      else
        order.order_lines << current_book.order_lines.create(order_line_creation_params)
      end
    else
      order = Order.create(user: session[:session_id])
      order_line = OrderLine.new(order_line_creation_params)
      order.order_lines << order_line
    end
    session[:order_id] = order.id
    redirect_to books_path
  end

  def update
    order_line = OrderLine.find(params[:id])
    action = params[:amount]
    if action == "add_one"
      order_line.amount_of_products += 1
      order_line.save
    elsif action == "remove_one"
      order_line.amount_of_products = [order_line.amount_of_products -= 1, 1].max
      order_line.save
    end
  end

  def destroy
    order_line = OrderLine.find(params[:id])
    order_line.destroy
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
