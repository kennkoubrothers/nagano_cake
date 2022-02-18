class Public::CartItemsController < ApplicationController
  def index
    @cart_items = CartItem.all
    # @cart_item = CartItem.find(params[:id])
  end

  def create

  end

  def update

  end

  def destroy

  end

  def destroy_all

  end

  private
  def cart_item_params
    params.require(:cart_item).permit(:item_id, :quantity)
  end
end
