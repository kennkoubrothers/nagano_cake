class Public::ItemsController < ApplicationController
  before_action :set_q, only: [:index, :search]

  def index
    @items = Item.page(params[:page])
    @genre = Genre.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def search
    @results = @q.result
  end

  private

  def set_q
    @q = Item.ransack(params[:q])
  end
end
