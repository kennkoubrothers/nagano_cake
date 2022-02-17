class Public::CustomersController < ApplicationController
  # before_action :reject_deleted_customer

  def show
    @customer=current_customer
  end

  def edit
    @customer=current_customer
  end

  def update
    @customer=current_customer
    @customer.update(customer_params)
    redirect_to customers_my_page_path
  end

  def unsubscribe
    @customer=current_customer
  end

  def withdraw
    @customer=current_customer
    if @customer.update(is_deleted: true)
      flash[:notice] = "退会が完了しました。"
      reset_session
      redirect_to new_customer_registration_path
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:family_name, :first_name, :family_name_kana, :first_name_kana, :postal_code, :address, :telephone, :email)
  end

  # protected

  # def reject_deleted_customer
  #   @customer=Customer.find_by(email: params[:customer][:email])
  #   if @customer
  #     if @customer.valid_password?(params[:customer][:password]) && !@customer.is_deleted
  #       redirect_to new_customer_registration_path
  #     end
  #   end
  # end
end
