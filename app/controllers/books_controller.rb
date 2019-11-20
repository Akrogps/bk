class BooksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_book, only: :show

  def index
    @books = Book.all
    @order = Order.find_by(id: session[:order_id])
    @number_of_items = 0
    unless @order.nil?
      @order.order_lines.each do |line|
        @number_of_items += line.amount_of_products
      end
    end
  end

  def show
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end
end
