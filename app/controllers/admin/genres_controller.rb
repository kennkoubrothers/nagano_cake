class Admin::GenresController < ApplicationController
  def index
    @genre = Genre.new
    @genres = Genre.all
  end

  def create
    @genre = Genre.new(genre_params)
    @genres = Genre.all
    if @genre.save
      flash[:notice] = "登録が完了しました。"
      redirect_to edit_admin_genre_path(@genre.id)
    else
      flash[:alert] = "空欄は無効です。"
      render :index
    end
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    if @genre.update(genre_params)
      flash[:notice] = "更新が完了しました。"
      redirect_to admin_genres_path
    else
      flash[:alert] = "空欄は無効です。"
      render :edit
    end
  end

  private

  def genre_params
   params.require(:genre).permit(:name)
  end
end