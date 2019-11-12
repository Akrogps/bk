class OrdersController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def show
  end

  private

  def set_order
  end
end
