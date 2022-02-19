class ApplicationController < ActionController::Base
  before_action :set_q

  def search
    @results = @q.result
  end

  def set_q
    @q = Item.ransack(params[:q])
  end

end
