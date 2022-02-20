class Admin::ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      flash[:notice] = "登録が完了しました。"
      redirect_to admin_items_path
    else
      flash[:alert] = "空欄は無効です。"
      render :new
    end
  end

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      flash[:notice] = "更新が完了しました。"
      redirect_to admin_item_path(@item)
    else
      flash[:alert] = "空欄は無効です。"
      render :edit
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :image, :explanation, :price, :is_active, :genre_id)
  end
end
