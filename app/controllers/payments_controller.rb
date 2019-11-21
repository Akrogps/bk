class PaymentsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @order = Order.find_by(id: session[:order_id])
  end

  private

  def permitted_params
    params.permit!
  end
end
