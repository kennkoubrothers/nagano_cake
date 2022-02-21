class Admin::OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
    @order_details = @order.order_details.all
    @total = @order_details.inject(0) { |sum, item| sum + item.subtotal }
    @postage = @order.postage
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    redirect_to admin_order_path(@order)
  end

  def customer_index
    @customer=Customer.find(params[:id])
    @orders=@customer.orders.all
  end

  private
  def order_params
    params.require(:order).permit(:status)
  end
end
