class OrderItemsController < ApplicationController

  def create

    if current_user.try(:current_order)
      @current_order = current_user.current_order
    else
      @current_order = current_user.orders.build
      @current_order.save!
    end

    vin = Vin.find(params[:vin_id])
    @order_item = @current_order.order_items.new(vin: vin)

    if @order_item.save
      redirect_to vin_path(vin)
    else
      redirect_to vins_path
    end
  end

  def update
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attributes(order_item_params)
    @order_items = @order.order_items
  end

  def destroy
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    @order_items = @order.order_items
  end

end
