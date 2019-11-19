class PaymentsController < ApplicationController
  skip_before_action :authenticate_user!
  
  def new
    @order = Order.find_by(id: session[:order_id])
    @book = Book.find_by(id: @order.order_lines[0].productable_id)
    # @order = current_user.orders.where(state: 'pending').find(params[:order_id])
  end

  private

  def permitted_params
    params.permit!
  end
end
