class CustomersController < ApplicationController
load_and_authorize_resource

  def create
    @customer.created_by = current_user.id
    if @customer.save
      redirect_to @customer, notice: 'Customer was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    if @customer.update_attributes(params[:customer])
      redirect_to @customer, notice: 'Customer was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @customer.destroy

    redirect_to customers_url
  end
end
