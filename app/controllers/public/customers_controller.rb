class Public::CustomersController < ApplicationController
  before_action :authenticate_customer!

  def show
    @customer=current_customer
  end

  def edit
    @customer=current_customer
  end

  def update
    @customer=current_customer
    if @customer.update(customer_params)
      flash[:notice] = "更新が完了しました。"
      redirect_to customers_my_page_path
    else
      flash[:alert] = "空欄は無効です。"
      render :edit
    end
  end

  def unsubscribe
    @customer=current_customer
  end

  def withdraw
    @customer=current_customer
    if @customer.update(is_deleted: true)
      reset_session
      flash[:notice] = "退会が完了しました。"
      redirect_to new_customer_registration_path
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:family_name, :first_name, :family_name_kana, :first_name_kana, :postal_code, :address, :telephone, :email)
  end

end
