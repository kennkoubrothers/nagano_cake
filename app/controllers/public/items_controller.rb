class Public::ItemsController < ApplicationController

  def index
    @items = Item.page(params[:page])
    @genre = Genre.all
  end

  def show
    @item = Item.find(params[:id])
    @genre = Genre.all
    @cart_item =CartItem
  end

end
