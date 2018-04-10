class CartsController < ApplicationController
  def show
    @order_items = current_user.current_order.order_items
  end
end
