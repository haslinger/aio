class PaymenttermsController < ApplicationController
load_and_authorize_resource

  def create
    if @paymentterm.save
      redirect_to @paymentterm, notice: 'Paymentterm was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    if @paymentterm.update_attributes(params[:unit])
      redirect_to @paymentterm, notice: 'Paymentterm was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @paymentterm.destroy

    redirect_to paymentterms_url
  end
end
