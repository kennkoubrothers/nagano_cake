class Admin::OrderDetailsController < ApplicationController

  def update
    order_datail = OrderDetail.find(params[:id])
    order_datail.update(order_datail_params)
    @order = Order.find(params[:order_id])
    redirect_to admin_order_path(@order)
  end

  private
  def order_datail_params
    params.require(:order_datail).permit(:making_status)
  end
end
